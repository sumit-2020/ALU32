# ALU32 - Advanced 32-bit Arithmetic Logic Unit

A comprehensive Verilog implementation of a 32-bit ALU featuring various advanced arithmetic algorithms and architectures. This project includes multiple adder implementations, multipliers, and floating-point operations, making it suitable for both educational purposes and practical applications in digital design.

## Features

### 1. Advanced Adder Architectures
- **Kogge-Stone Adder**: A parallel prefix form carry look-ahead adder
- **Brent-Kung Adder**: An efficient parallel prefix adder
- **Knowles Adder**: A hybrid parallel prefix adder
- **Ladner-Fischer Adder**: Another variant of parallel prefix adder
- **Carry Skip Adder**: Fast addition using carry skip technique

### 2. Multiplier Implementations
- **Unsigned Array Multiplier**: Basic combinational multiplier
- **2's Complement Array Multiplier**: Signed multiplication support
- **Fused Array Multiplier (FAM)**: Advanced multiplication architecture with integrated operations

### 3. Floating-Point Operations
- **Floating-Point Divider**: IEEE-754 compliant division operation
- **Exponent Unit**: Handles exponent calculations for floating-point operations
- **Normalization**: Supports both left and right normalization
- **Leading Zero Counter (LZC64)**: 64-bit leading zero detection

## Architecture Details

### Adder Implementations

1. **Kogge-Stone Adder (`Kogge_Stone_Adder/KoggeStone.v`)**
   - Parallel prefix adder architecture
   - Uses black and grey cells for carry generation
   - Optimized for high-speed operation

2. **Carry Skip Adder (`Carry_Skip_Adder/Block.v`)**
   - Block-based implementation
   - Uses propagate signals for carry skipping
   - Efficient for medium-sized operands

### Multiplier Architectures

1. **Unsigned Array Multiplier (`Unsigned_Array_Multiplier/main.v`)**
```verilog
module simple_combinational_mult(
    input [15:0] multiplier, multiplicand,
    output reg [31:0] product
);
```
   - Simple combinational multiplication
   - Uses shift-and-add algorithm
   - 16-bit operands producing 32-bit result

2. **Fused Array Multiplier (`Fused_Array_Multiplier/fused_array_multiplier.v`)**
   - Advanced architecture with integrated operations
   - Features:
     - Exponent handling unit
     - Shifter for mantissa alignment
     - Normalization circuits
     - Carry propagation adder

### Floating-Point Operations

1. **Floating-Point Divider (`Floating_Point_Divider/floating_point_div.v`)**
   - IEEE-754 compliant implementation
   - Features:
     - 24-bit mantissa handling
     - Dynamic shifting
     - State machine control
     - Proper rounding support

2. **Exponent Unit (`Fused_Array_Multiplier/exp_unit.v`)**
```verilog
module exp_unit(
    input [7:0] exp_a, exp_b, exp_c,
    output [7:0] shamt,
    output ab_req
);
```
   - Handles exponent calculations
   - Provides shift amount computation
   - Supports special case detection

## Getting Started

### Prerequisites
- Verilog HDL simulator (e.g., ModelSim, Icarus Verilog)
- FPGA development board (optional, for hardware testing)
- Basic understanding of digital design and Verilog HDL

### Directory Structure
```
ALU32/
├── Kogge_Stone_Adder/
├── Brent_Kung_Adder/
├── Knowles_Adder/
├── Ladner_Fischer_Adder/
├── Carry_Skip_Adder/
├── Unsigned_Array_Multiplier/
├── 2c_Array_Multiplier/
├── Fused_Array_Multiplier/
├── Floating_Point_Divider/
└── LZC64/
```

### Usage Examples

1. **Basic Addition Operation**
```verilog
// Using Kogge-Stone Adder
module test;
    reg [31:0] a, b;
    wire [31:0] sum;
    wire cout;
    
    KoggeStone adder(
        .a(a),
        .b(b),
        .cin(1'b0),
        .sum(sum),
        .cout(cout)
    );
endmodule
```

2. **Floating-Point Division**
```verilog
// Using Floating-Point Divider
floating_point_div divider(
    .dividend(dividend),
    .divisor(divisor),
    .quotient(quotient),
    .clock(clock),
    .init(init)
);
```

## Testing

Each module includes its own testbench in Python for simulation and verification. The testbenches are designed to cover various corner cases and typical usage scenarios.

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Thanks to all contributors who have helped in implementing various arithmetic algorithms
- Special thanks to the digital design community for their valuable insights and feedback

## Author

- [@sumit-2020](https://github.com/sumit-2020)
