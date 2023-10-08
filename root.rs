use std::fs;
use std::io::{Result, Write};
use std::path::Path;

pub fn root() -> Result<Vec<String>> {
    let mut chapters: Vec<String> = fs::read_dir(".")?
    .filter_map(|entry| {
        let entry = entry.unwrap();
        let path = entry.path();
        if path.is_dir()  {
            let path = path.file_name().unwrap().to_str().unwrap().to_string();
            if path.contains("ch"){
               Some(path) 
            } else {
                None
            }
        } else {
            None
        }
    })
    .collect();

    chapters.sort();

    let mut makefile_content = String::new();

    for chapter in &chapters {
        let chapter_makefile_path = format!("{}/Makefile", chapter);
        if Path::new(&chapter_makefile_path).exists() {
            let chapter_makefile_content = fs::read_to_string(chapter_makefile_path)?;
            let compile_targets: Vec<String> = chapter_makefile_content
                .lines()
                .filter(|line| line.starts_with("compile_"))
                .map(|line| line.split(':').next().unwrap().to_string())
                .collect();

            let mut target_commands: Vec<String> = compile_targets
                .iter()
                .map(|target| format!("make {} && \\", target))
                .collect();
            if let Some(last_command) = target_commands.last_mut() {
                *last_command = last_command.trim_end_matches(" && \\").to_string();
            }

            makefile_content.push_str(&format!(
                "compile_{}:\n\tcd {} && {}\n\n",
                chapter,
                chapter,
                target_commands.join("\n\t")
            ));
        }
    }

    makefile_content.push_str(&format!(
        "compile_all: {}\n\n",
        chapters
            .iter()
            .map(|chapter| format!("compile_{}", chapter))
            .collect::<Vec<String>>()
            .join(" ")
    ));

    makefile_content.push_str(CLEAN);

    let mut file = fs::File::create("Makefile")?;
    file.write_all(makefile_content.as_bytes())?;

    Ok(chapters)
}


const CLEAN: &str = "clean: \n\tfind ./*/ -type f -executable -exec rm {} \\;\n\trm -f ./*/*.o && rm -f ./*/exercises/*.o";