

fn main() {
    let data = json::parse(r#"{ "a": 1, "b": 2 }"#).unwrap();
    println!("{}", data["a"].as_f32().unwrap() + data["b"].as_f32().unwrap())
}
