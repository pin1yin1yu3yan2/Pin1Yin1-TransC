# Pin1Yin1 Yu3Yan2 Reference

## Keywords

### Types

1. Primitive Types

    | Type Name | Description | Type Data | Real Data | Chinese | English | 
    | ----- | ----- | ----- | ----- | ----- | ----- |
    | `zheng3` | integer type, default to be signed 32-bit width | 114 | 114 | 整数 | integer |
    | `fu2` |  float type, default to be 32-bit width | 1f14 | 1.14 | 浮点数 | floating-point |
    | `zi4` | char type,default to be 32-bit width | wen2 a | a | 字符 | character |
    | `bu4` | boolean | zhen1, jia3 | true, false | 布尔 | boolean |
    | `xu1` | complex number type | 1f14x1f14 | 1.14 + 1.14i | 虚数 | imaginary |

    1. `zheng3`

        `zheng3` can be seen as integer types like `int`,`long` in cpp

    2. `fu2`

        `fu2` can be seen as float types like `float`, `double` in cpp

    3. `zi4`

        `zi4` is 8-bit width only, this means that char could not be a UNICODE character

        `zi4` could be defind via `wen2`:  `zi4 d deng3 wen2 _x fen1` means `char d = 'x'`

        `_s` means space (` `): `zi4 k deng3 _s fen1` means `char k = ' '`

        `_t` and `_n` are equal to `\t`, `\n` in cpp, others are so, too

        `zu3 zi4` can be defind via `chuan4`: `zu3 zi4 dd deng3 chuan4 tiansuohaoer` measn `char[] dd = "tiansuohaoer"`
    
    4. `bu4`

        there are two constants: `zhen1` and `fou3` (`true` and `false`)

    > you can use bian4 to let the compiler inference the type, eg:
    > 
    > * `bian4 aaa deng3 a` means `auto aaa = a`

2. Basic Extend Words

    | Word Name | Description | Chinese | English | Usage |
    | ----- | ----- | ----- | ----- | ----- |
    | `zu3` | define array |  数组 | array | `zu3 zheng3 arr`
    | `kuan1` | custom data size | 宽度 | width | `kuan1 32 zheng3 a`
    | `you3fu2` | define signed integer | 有符号 | signed | `you3fu2 zheng3 n`
    | `wu2fu2` | define unsigned integer | 无符号 | unsigned |`wu2fu2 zheng3 a`
    | `yin3` | define a reference  | 引用 | reference | `yin3 bian4 aaa`
    | `you4yin3` | define a right value reference  | 右值引用 | reference | `you4yin3 bian4 bbb`
    | `she3` | define a const | 设 | reference | `she4 zheng3 x`
    
    1. `zu3`
        you can specify the number of elements in the array by writing `zu3 n`, n is a `wu2fu2 zheng3`
         
        you can alse just use `zu3` to let compiler inference the size automatically
 
    2. `you3fu2` and `wu2fu2`
        `you3fu2` and `wu2fu2` can only be used for `zheng3`

    3. `kuan1`
        `kuan1` can only be used for `Primitive Types`
         
        width can only be 16,32 and 64 for `fu2`, and for     `zheng3`, it can alse be 128
        
        for complex type:
        * `xu1 a kuan 64` mean the real part 7and the imag part   are both 32-bit width
         
        * the maximum width of `xu1` is 128(both real and imag parts are 64-bit width)
    
    4. `yin3`, `you4yin3`
        `yin3` means `&` in cpp

        `you4yin3` means `&&` in cpp

    example of using many extend words together: `zu3 114514 kuan1 32 wu2fu2 yin3 zheng3 a` means `unsigend int a[114514]&` in cpp
    
### Syntax

1. Structs Definitions

    | Keyword Name | Description | Chinese | Symbol |
    | --- | --- | --- | --- |
    | `lei4` | define a class| 类  | class 
    | `mei2` | define a enum | 枚举 | enum

2. Symbols
    | Keyword Name | Description | Chinese | Symbol |
    | --- | --- | --- | --- |
    | `han2` | the start of a code block | 函，函数，也就输大括号 | {
    | `can1` | the start of parameters | 参，参数，也就是小括号 | (
    | `shi4` | comment | 注释 | /*
    | `jie2` | end of `can1`, `han2` or `shi4` | 自动和`can1`, `han2`或`shi4`配对 |   ) or } or */
    | `fen1` | end of line | 分号 | ;
    | `deng1` | assign | 等于，赋值 | =

3. Algebra Operators
    | Keyword Name | Description | Chinese | Symbol |
    | --- | --- | --- | --- |
    | `jia1` | add | 加 | +
    | `jian3` | min | 减 | -
    | `cheng2` | mul | 乘 | *
    | `chu2` | div | 除 | /
    | `mo2` | mod | 取模 | %

4. Compare Operators
    | Keyword Name | Description | Chinese | Symbol |
    | --- | --- | --- | --- |
    | `tong2` | equal to| 同 | ==
    | `fei1tong2` | not equal to | 非同 | !=
    | `da4` | greater than| 大于 | >
    | `xiao3` | lesser | 小于 | <
    | `da4deng3` | greater than or equal to| 大于等于 | >=
    | `xiao3deng3` | less than or equal to| 小于等于 | <=

5. Logic Operators
    | Keyword Name | Description | Chinese | Symbol |
    | --- | --- | --- | --- |
    | `qie3` | and | 且 | &&
    | `huo4` | or | 或 | \|\|
    | `fei1` | not | 非 | !


6. Control FLow
    | Keyword Name | Description | Chinese | Symbol |
    | --- | --- | --- | --- |
    | `ruo4` | if | 若 | if
    | `ze2` | else | 则 | else
    | `chong2` | repeat | 重复 | while
    | `fan3` | return | 返回 | return