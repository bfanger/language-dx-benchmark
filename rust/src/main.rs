use serde_json::Value;

fn main() {
    let data: Value = serde_json::from_str(r#"{ "a": 1, "b": 2 }"#).unwrap();
    println!("{}", data["a"].as_f64().unwrap() + data["b"].as_f64().unwrap())
}
