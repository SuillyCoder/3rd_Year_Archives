/*=================================================
CpE3202 - G3
Laboratory Exercise 1: ALU

Members and Contributions:
    BASUIL, Jesus Lorenzo C: XOR, Shift Left, Shift Right
    PACE, Vaun Michael C: OR, NOT
    PEREZ, Julio Miguel: Multiplication, AND
    QUIEL, Cedric Nichole: Addition, Subtraction

=================================================*/


#include <stdio.h>
#include <math.h>

//Convert into Binary

void hexToBin(unsigned char hexVal, char *result) {
    int i = 7; // For 8 bits
    result[8] = '\0'; // Null-terminate the string

    while (i >= 0) {
        result[i] = (hexVal & 1) ? '1' : '0'; // Check least significant bit
        hexVal >>= 1; // Shift right by 1
        i--;
    }
}


//0x01: ADDITION
void Addition(unsigned char operand1, unsigned char operand2) {
    char binary1[9], binary2[9], addResult[9];
    
    printf("\n*****************\n");
    printf("Fetching operands...\n");
    hexToBin(operand1, binary1);
    printf("OP1: %s\n", binary1);
    hexToBin(operand2, binary2);
    printf("OP2: %s\n", binary2);
    printf("Operation: ADD\n");
    printf("*****************\n");
    
    unsigned char carry = 0;
    addResult[8] = '\0';
    
    for (int i = 7; i >= 0; i--) {
        unsigned char bit1 = binary1[i] - '0';
        unsigned char bit2 = binary2[i] - '0';
        unsigned char sum = bit1 + bit2 + carry;
        
        addResult[i] = (sum % 2) + '0';
        carry = sum / 2;
    }
    
    // Flags
    unsigned char carryFlag     = carry;
    unsigned char zeroFlag      = 1;
    unsigned char negativeFlag  = (addResult[0] == '1') ? 1 : 0;
    unsigned char overflowFlag  = 0;

    for (int i = 0; i < 8; i++) {
        if (addResult[i] == '1') { zeroFlag = 0; break; }
    }

    // Overflow: same sign operands produce different sign result
    if ((binary1[0] == binary2[0]) && (addResult[0] != binary1[0]))
        overflowFlag = 1;

    printf("OP1:        %s\n", binary1);
    printf("OP2:        %s\n", binary2);
    printf("ADD Result: %s\n", addResult);
    printf("\n--- FLAGS ---\n");
    printf("CARRY:    %d\n", carryFlag);
    printf("ZERO:     %d\n", zeroFlag);
    printf("NEGATIVE: %d\n", negativeFlag);
    printf("OVERFLOW: %d\n", overflowFlag);
}
//0x02: SUBTRACTION (using 2's Complement)
void Subtraction(unsigned char operand1, unsigned char operand2) {
    char binary1[9], binary2[9], subResult[9], twosComp[9];
    
    printf("\n*****************\n");
    printf("Fetching operands...\n");
    hexToBin(operand1, binary1);
    printf("OP1: %s\n", binary1);
    hexToBin(operand2, binary2);
    printf("OP2: %s\n", binary2);
    printf("Operation: SUB\n");
    printf("*****************\n");
    
    // Step 1: 1's Complement of operand2
    char onesComp[9];
    onesComp[8] = '\0';
    for (int i = 0; i < 8; i++) {
        onesComp[i] = (binary2[i] == '1') ? '0' : '1';
    }
    
    // Step 2: 2's Complement (1's Complement + 1)
    unsigned char carry = 1;
    twosComp[8] = '\0';
    for (int i = 7; i >= 0; i--) {
        unsigned char bit = (onesComp[i] - '0') + carry;
        twosComp[i] = (bit % 2) + '0';
        carry = bit / 2;
    }

    // Step 3: Add operand1 + 2's complement of operand2
    carry = 0;
    subResult[8] = '\0';
    for (int i = 7; i >= 0; i--) {
        unsigned char bit1 = binary1[i] - '0';
        unsigned char bit2 = twosComp[i] - '0';
        unsigned char sum  = bit1 + bit2 + carry;
        subResult[i] = (sum % 2) + '0';
        carry = sum / 2;
    }
    
    // Flags
    unsigned char borrowFlag    = (operand1 < operand2) ? 1 : 0;
    unsigned char zeroFlag      = 1;
    unsigned char negativeFlag  = (subResult[0] == '1') ? 1 : 0;
    unsigned char overflowFlag  = 0;

    for (int i = 0; i < 8; i++) {
        if (subResult[i] == '1') { zeroFlag = 0; break; }
    }

    // Overflow: different sign operands produce wrong sign result
    if ((binary1[0] != binary2[0]) && (subResult[0] != binary1[0]))
        overflowFlag = 1;

    printf("OP1:         %s\n", binary1);
    printf("OP2:         %s\n", binary2);
    printf("2's Comp:    %s\n", twosComp);
    printf("SUB Result:  %s\n", subResult);
    printf("\n--- FLAGS ---\n");
    printf("BORROW:   %d\n", borrowFlag);
    printf("ZERO:     %d\n", zeroFlag);
    printf("NEGATIVE: %d\n", negativeFlag);
    printf("OVERFLOW: %d\n", overflowFlag);
}

//0X04: AND
void AND_op(char *operand1, char *operand2, char *ANDresult){
    ANDresult[8] = '\0'; // Null-terminate the string
    for (int i = 0; i < 8; i++){
        ANDresult[i] = (operand1[i] == '1' && operand2[i] == '1') ? '1' : '0';
    }
}

//0x05: OR
void OR_op(char *operand1, char *operand2, char *ORresult){
    ORresult[8] = '\0'; // Null-terminate the string
    for (int i = 0; i < 8; i++){
        ORresult[i] = (operand1[i] == '1' || operand2[i] == '1') ? '1' : '0';
    }
}

//0X06: NOT
void NOT_op(char *operand1, char *NOTresult){
    NOTresult[8] = '\0'; // Null-terminate the string
    for (int i = 0; i < 8; i++){
        NOTresult[i] = (operand1[i] == '1') ? '0' : '1';
    }
}

//0X07: XOR
void XOR(char *operand1, char *operand2, char *XORresult){
    XORresult[8] = '\0'; // Null-terminate the string
    for (int i = 0; i < 8; i++){
        XORresult[i] = (operand1[i] != operand2[i]) ? '1' : '0';
    }
}

//0X08: SHIFT LEFT
void shiftLeft(char *binaryVal, char *sLeftResult){
    sLeftResult[8] = '\0'; // Null-terminate the string
    for (int i = 0; i < 7; i++){
        sLeftResult[i] = binaryVal[i+1];
    }
    sLeftResult[7] = '0';
}

//0X09: SHIFT RIGHT
void shiftRight(char *binaryVal, char *sRightResult){
    sRightResult[8] = '\0'; // Null-terminate the string
    sRightResult[0] = '0';
    for (int i = 1; i < 8; i++){
        sRightResult[i] = binaryVal[i-1];
    }
}

//0x03: MULTIPLICATION
void Multiply(unsigned char operand1, unsigned char operand2) {
    unsigned char A = 0x00;
    unsigned char Q = operand2;
    unsigned char M = operand1;
    unsigned char Q_n1 = 0;
    
    char binA[9], binQ[9], binM[9];
    
    printf("\n*****************\n");
    printf("Fetching operands...\n");
    hexToBin(M, binM);
    printf("OP1: %s\n", binM);
    hexToBin(Q, binQ);
    printf("OP2: %s\n", binQ);
    printf("Operation: MUL\n");
    printf("*****************\n");
    printf("A        Q        Q_n1 M        n\n");
    
    for (int n = 0; n <= 8; n++) {
        hexToBin(A, binA);
        hexToBin(Q, binQ);
        hexToBin(M, binM);
        
        // Display each cycle with updated values
        printf("%s %s %d    %s %d\n", binA, binQ, Q_n1, binM, n);
        
        if (n == 8) break; // End of algorithm, do not shift/add
        
        unsigned char Q_0 = Q & 0x01;
        
        // 2's complement logic
        if (Q_0 == 1 && Q_n1 == 0) {
            A = A + (~M + 1); // Subtract M from A
        } else if (Q_0 == 0 && Q_n1 == 1) {
            A = A + M;        // Add M to A
        }
        
        // Arithmetic Shift Logic
        unsigned char MSB_A = A & 0x80;
        unsigned char LSB_A = A & 0x01;
        unsigned char LSB_Q = Q & 0x01;
        
        A = (A >> 1) | MSB_A;        // Shift A right, preserve sign bit
        Q = (Q >> 1) | (LSB_A << 7); // Shift Q right, move A's LSB to Q's MSB
        Q_n1 = LSB_Q;                // Assign Q's old LSB to Q_n1
    }
    
    // Construct and display 16-bit ACC
    unsigned int ACC = (A << 8) | Q;
    char binACC[17];
    binACC[16] = '\0';
    unsigned int tempACC = ACC;
    for(int i = 15; i >= 0; i--) {
        binACC[i] = (tempACC & 1) ? '1' : '0';
        tempACC >>= 1;
    }
    printf("ACC: %s\n", binACC);
}


//ALU function prototype
int ALU(unsigned char operand1, unsigned char operand2, int operation){
    char binary1[9], binary2[9];
    switch(operation){
        case 0x01:
            printf("\nADDITION OPERATION\n");
            Addition(operand1, operand2);
            break;

        case 0x02:
            printf("\nSUBTRACTION OPERATION\n");
            Subtraction(operand1, operand2);
            break;
        
        
        case 0x03:
            //MULTIPLICATION
            printf("\nMULTIPLICATION OPERATION\n");
            Multiply(operand1, operand2);
            break;

        case 0x04:
            //BITWISE AND
            printf("\nBITWISE AND OPERATION\n");
            char andResult[9];
            hexToBin(operand1,  binary1);
            hexToBin(operand2, binary2);
            AND_op(binary1, binary2, andResult);
            printf("OP1: %s\n", binary1);
            printf("OP2: %s\n", binary2);
            printf("AND Result: %s\n", andResult); 
            break;

        case 0x05:
            //BITWISE OR
            printf("\nBITWISE OR OPERATION\n");
            char orResult[9];
            hexToBin(operand1, binary1);
            hexToBin(operand2, binary2);
            OR_op(binary1, binary2, orResult);
            printf("OP1: %s\n", binary1);
            printf("OP2: %s\n", binary2);
            printf("OR Result: %s\n", orResult);
            break;

        case 0x06:
            //BITWISE NOT
            printf("\nBITWISE NOT OPERATION\n");
            char notResult[9];
            hexToBin(operand1, binary1);
            NOT_op(binary1, notResult);
            printf("OP1: %s\n", binary1);
            printf("NOT Result: %s\n", notResult);
            break;

        case 0x07: 
            printf("\nBITWISE XOR OPERATION\n");
            char xorResult[9];
            hexToBin(operand1,  binary1);
            hexToBin(operand2, binary2);
            XOR(binary1, binary2, xorResult);
            printf("OP1: %s\n", binary1);
            printf("OP2: %s\n", binary2);
            printf("XOR Result: %s\n", xorResult); // <-- xorResult, not binary!
            break;

        case 0x08:
            //SHIFT LEFT
            printf("\nSHIFT LEFT OPERATION\n");
            char shiftedLeft[9];
            hexToBin(operand1, binary1);
            shiftLeft(binary1, shiftedLeft);
            printf("\nOriginal Binary Value: %s", binary1);
            printf("\nShifted left Result: %s\n", shiftedLeft); //Result shifted left
            break;

        case 0x09:
            //SHIFT RIGHT
            printf("\nSHIFT RIGHT OPERATION\n");
            char shiftedRight[9];
            hexToBin(operand1,  binary1);
            shiftRight(binary1, shiftedRight);
            printf("\nOriginal Binary Value: %s", binary1);
            printf("\nShifted right Result: %s\n", shiftedRight); //Result shifted right
            break;

        default:
            printf("\nInstruction Word not Recognized!");
            break;
    }
}

int main(){
 
    printf("ALU INITIALIZATION!\n");

    //0x01: ADDITION Operation (numbers used are 72 and 31)
    ALU(0x48, 0x1F, 0x01); 

    //0x04: SUBTRACTION Operation  (numbers used are 88 and 26)
    ALU(0x58, 0x1A, 0x02);

    //0x03: MULTIPLICATION Operation (numbers used are -64 and 10)
    ALU(0xC0, 0x0A, 0x03); 

    //0x04: AND Operation
    ALU(0xCF, 0xD2, 0x04);

    //0x05: OR Operation
    ALU(0xCF, 0xD2, 0x05);

    //0x06: NOT Operation (second operand is 0x00 per spec)
    ALU(0xCF, 0x00, 0x06);

    //0x07: XOR Operation 
    ALU(0xCF, 0xD2, 0x07);

    //0x08: SHIFT LEFT Operation
    ALU(0xB3, 0x84, 0x08);

    //0x09: SHIFT RIGHT Operation
    ALU(0x71, 0x96, 0x09);

    return 0;
}
