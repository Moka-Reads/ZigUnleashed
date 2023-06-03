// This file is built to help determine the Makefile Variables for a given chapter
use std::fmt;
use std::fs;
use std::io::Result;
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
        for entry in fs::read_dir(&path)? {
            let entry = entry?;
            match entry.path().extension() {
                Some(p) => {
                    let name = entry.file_name().into_string().unwrap();
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
            // check exercise dir 
        }
        Ok(())
    }
    pub fn to_string(&self) -> String {
        let c_files = self
            .c
            .iter()
            .map(|x| x.to_string())
            .collect::<Vec<String>>()
            .join(" ");
        let cpp_files = self
            .cpp
            .iter()
            .map(|x| x.to_string())
            .collect::<Vec<String>>()
            .join(" ");
        let rs_files = self
            .rs
            .iter()
            .map(|x| x.to_string())
            .collect::<Vec<String>>()
            .join(" ");
        let zig_bin_files = self
            .zig
            .iter()
            .filter(|x| x.ty == ZigType::Bin)
            .cloned()
            .collect::<Vec<Zig>>()
            .iter()
            .map(|x| x.to_string())
            .collect::<Vec<String>>()
            .join(" ");
        let zig_test_files = self
            .zig
            .iter()
            .filter(|x| x.ty == ZigType::Test)
            .cloned()
            .collect::<Vec<Zig>>()
            .iter()
            .map(|x| x.to_string())
            .collect::<Vec<String>>()
            .join(" ");

        let zig_bin_var = format!("ZIG_EXE = {zig_bin_files}");
        let zig_test_var = format!("ZIG_TEST = {zig_test_files}");
        let rs_var = format!("RS = {rs_files}");
        let cpp_var = format!("CPP = {cpp_files}");
        let c_var = format!("C = {c_files}");

        vec![zig_bin_var, zig_test_var, rs_var, cpp_var, c_var].join("\n")
    }
}

fn main() -> Result<()> {
    let ch = std::env::args().skip(1).next().unwrap();

    let mut make_var = MakeVar::new();
    make_var.search(&ch)?;
    println!("{}", make_var.to_string());

    Ok(())
}
