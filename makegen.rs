// This file is built to create Makefiles for the code samples
mod root;

use std::fmt;
use std::fs;
use std::io::{Result, Write};
use std::path::Path;
struct MakeVar {
    c: Vec<String>,
    cpp: Vec<String>,
    rs: Vec<String>,
    zig: Vec<Zig>,
}
#[derive(Clone, PartialEq, PartialOrd, Ord, Eq)]
struct Zig {
    file: String,
    ty: ZigType,
}

impl Zig {
    pub fn new(ch: &str, file_name: &str) -> Result<Self> {
        let name = format!("{}/{}", ch, file_name);

        if Path::new(&name).is_dir() {
            return Ok(Self {
                file: file_name.to_string(),
                ty: ZigType::Proj,
            });
        }

        let content = fs::read_to_string(name)?;
        let ty = if content.contains("main") {
            ZigType::Bin
        } else {
            ZigType::Test
        };
        Ok(Self {
            file: file_name.to_string(),
            ty,
        })
    }
}

impl fmt::Display for Zig {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        write!(f, "{}", &self.file)
    }
}
#[derive(Clone, PartialEq, PartialOrd, Ord, Eq)]
enum ZigType {
    Bin,
    Test,
    Proj,
}

impl MakeVar {
    pub fn new() -> Self {
        Self {
            c: vec![],
            cpp: vec![],
            rs: vec![],
            zig: vec![],
        }
    }

    pub fn search(&mut self, ch: &str) -> Result<()> {
        let path = Path::new(ch);
        for entry in fs::read_dir(&path)?{
            let entry = entry?;
            match entry.path().extension() {
                Some(p) => {
                    let name = entry.file_name().into_string().unwrap();
                    if name.contains("extern"){
                        continue;
                    }
                    match p.to_str().unwrap() {
                        "c" => self.c.push(name),
                        "cpp" => self.cpp.push(name),
                        "rs" => self.rs.push(name),
                        "zig" => self.zig.push(Zig::new(ch, &name)?),
                        _ => continue,
                    }
                }
                None => continue,
            }
        }
        // check exercise dir
        let ex_path = path.join("exercises");
        if !ex_path.exists(){
            return Ok(())
        }
        for entry in fs::read_dir(&ex_path)? {
            let entry = entry?;
            let file_name = entry.file_name().into_string().unwrap();
            if file_name.contains("zig"){
                let name = format!("exercises/{file_name}");
                self.zig.push(Zig::new(ch, &name)?);
            }
        }
        Ok(())
    }
    pub fn to_string(&self) -> String {
        let mut result = String::new();

        if !self.c.is_empty() {
            let c_files = self
                .c
                .iter()
                .map(|x| x.to_string())
                .collect::<Vec<String>>()
                .join(" ");
            result.push_str(&format!("C_FILES = {}\n", c_files));
        }

        if !self.cpp.is_empty() {
            let cpp_files = self
                .cpp
                .iter()
                .map(|x| x.to_string())
                .collect::<Vec<String>>()
                .join(" ");
            result.push_str(&format!("CPP_FILES = {}\n", cpp_files));
        }

        if !self.rs.is_empty() {
            let rs_files = self
                .rs
                .iter()
                .map(|x| x.to_string())
                .collect::<Vec<String>>()
                .join(" ");
            result.push_str(&format!("RS_FILES = {}\n", rs_files));
        }

        if !self.zig.is_empty() {
            let zig_bin_files: Vec<String> = self
                .zig
                .iter()
                .filter(|x| x.ty == ZigType::Bin)
                .cloned()
                .collect::<Vec<Zig>>()
                .iter()
                .map(|x| x.to_string())
                .collect();
            if !zig_bin_files.is_empty() {
                result.push_str(&format!("ZIG_EXE_FILES = {}\n", zig_bin_files.join(" ")));
            }

            let zig_test_files: Vec<String> = self
                .zig
                .iter()
                .filter(|x| x.ty == ZigType::Test)
                .cloned()
                .collect::<Vec<Zig>>()
                .iter()
                .map(|x| x.to_string())
                .collect();
            if !zig_test_files.is_empty() {
                result.push_str(&format!("ZIG_TEST_FILES = {}\n", zig_test_files.join(" ")));
            }

            let zig_projs: Vec<String> = self
                .zig
                .iter()
                .filter(|x| x.ty == ZigType::Proj)
                .cloned()
                .collect::<Vec<Zig>>()
                .iter()
                .map(|x| x.to_string())
                .collect();
            if !zig_projs.is_empty() {
                result.push_str(&format!("ZIG_PROJ_FILES = {}\n", zig_projs.join(" ")));
            }
        }

        result
    }
}

// Compiler environment variables
const CC: &str = "CC = clang";
const CPP: &str = "CC+ = g++";
const RUSTC: &str = "RUSTC = rustc";

struct Commands {
    variables: Vec<String>,
    commands: Vec<Command>,
}

struct Command {
    command: String,
    arg: String,
}

impl Command {
    pub fn rust() -> Self {
        let command = "compile_rs: ";
        let arg = r#"$(foreach file, $(RS_FILES), \
		$(eval out=$(patsubst %.rs,%_rs,$(file))) \
		$(RUSTC) $(file) -o $(out);)"#;

        Self {
            command: command.to_string(),
            arg: format!("\t{arg}"),
        }
    }
    pub fn c() -> Self {
        let command = "compile_c: ";
        let arg = r#"$(foreach file, $(C_FILES), \
		$(eval out=$(patsubst %.c,%_c,$(file))) \
		$(CC) $(file) -o $(out);)"#;
        Self {
            command: command.to_string(),
            arg: format!("\t{arg}"),
        }
    }
    pub fn cpp() -> Self {
        let command = "compile_cpp: ";
        let arg = r#"$(foreach file, $(CPP_FILES), \
		$(eval out=$(patsubst %.cpp,%_cpp,$(file))) \
		$(CC+) $(file) -o $(out);)"#;
        Self {
            command: command.to_string(),
            arg: format!("\t{arg}"),
        }
    }
    pub fn zig() -> Self {
        let command = "compile_zig: ";
        let bin_arg = r#"$(foreach file, $(ZIG_EXE), \
		zig build-exe $(file);)"#;
        let test_arg = r#"$(foreach file, $(ZIG_TEST), \
		zig test $(file);)"#;
        let proj_arg = r#"$(foreach proj, $(ZIG_PROJS), \
		cd $(proj) && zig build;)"#;

        Self {
            command: command.to_string(),
            arg: vec![
                format!("\t{bin_arg}"),
                format!("\t{test_arg}"),
                format!("\t{proj_arg}"),
            ]
            .join("\n"),
        }
    }
    pub fn to_string(&self) -> String {
        vec![self.command.to_string(), self.arg.to_string()].join("\n")
    }
}

impl Commands {
    pub fn new(make_var: &MakeVar) -> Self {
        let mut variables = vec![];
        let mut commands = vec![];

        if !make_var.c.is_empty() {
            variables.push(CC.to_string());
            commands.push(Command::c());
        }

        if !make_var.cpp.is_empty() {
            variables.push(CPP.to_string());
            commands.push(Command::cpp());
        }

        if !make_var.rs.is_empty() {
            variables.push(RUSTC.to_string());
            commands.push(Command::rust());
        }

        if !make_var.zig.is_empty() {
            // zig commands
            commands.push(Command::zig());
        }

        Self {
            variables,
            commands,
        }
    }
    pub fn to_string(&self) -> String {
        let command_strings: Vec<String> = self.commands.iter().map(|x| x.to_string()).collect();
        vec![self.variables.join("\n"), command_strings.join("\n")].join("\n")
    }
}

fn main() -> Result<()> {
    println!("Generating root Makefile...");
    let chapters = root::root()?;

    for ch in chapters {
        println!("Generating Makefile for {}...", &ch);
        
        let mut make_var = MakeVar::new();
        make_var.search(&ch.trim())?;

        let commands = Commands::new(&make_var);

        let path = format!("{}/Makefile", &ch);

        let mut file = fs::File::create(&path)?;
        let string = vec![make_var.to_string(), commands.to_string()].join("\n");
        file.write_all(string.as_bytes())?;
    }
    Ok(())
}
