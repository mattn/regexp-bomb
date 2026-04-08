console.time("regex");
/(a+)*b$/.test("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaba");
console.timeEnd("regex");
