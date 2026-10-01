#helloworld 
output hello {
    value = "terra teraa ra terra ra"
}
output onemore {
    value = "this is for the multi block"
}
output third {
    value = "this is the third output"
}
variable text {
    default = "namaste"
}
variable age {
    type = number
    #types can be number, string , bool, list , set, map, object, tuple, any etc...
}
output userin {
    value = "hello sir , ${var.text}, your age is ${var.age}"
}