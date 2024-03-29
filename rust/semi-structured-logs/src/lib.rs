// This stub file contains items that aren't used yet; feel free to remove this module attribute
// to enable stricter warnings.
#![allow(unused)]

/// various log levels
#[derive(Clone, PartialEq, Eq, Debug)]
pub enum LogLevel {
    Info,
    Warning,
    Error,
    Debug,
}
/// primary function for emitting logs
pub fn log(level: LogLevel, message: &str) -> String {
    match level {
        LogLevel::Info => info(message),
        LogLevel::Warning => warn(message),
        LogLevel::Error => error(message),
        LogLevel::Debug => debug(message),
    }
}
pub fn info(message: &str) -> String {
    // unimplemented!("return a message for info log level")
    format!("[INFO]: {message}")
}
pub fn warn(message: &str) -> String {
    // unimplemented!("return a message for warn log level")
    format!("[WARNING]: {message}")
}
pub fn error(message: &str) -> String {
    // unimplemented!("return a message for error log level")
    format!("[ERROR]: {message}")
}

pub fn debug(message: &str) -> String {
    format!("[DEBUG]: {message}")
}
