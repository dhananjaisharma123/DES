//Array of data and key combinations, there are 10 pairs of data and key
#include "des_fun.h"
#include <stdio.h>
#include <iostream>
#include <ac_int.h>
#include <mc_scverify.h>
ac_int<64,false> IN[10][2]={{0x0000000010005578,0x000000000000000F},  //data[1],key[1]
		{0x444a736861726d61,0x00000000000000FF}, //data[2],key[2]
		{0x50726f664b617269,0x0000000000000FFF}, //data[3],key[3]
		{0x50726f664d696b68,0x000000000000FFFF}, //data[4],key[4]
		{0x616e757368726565,0x00000000000FFFFF}, //data[5],key[5]
		{0x42454e42454e4245,0x0000000000FFFFFF}, //data[6],key[6]
		{0x4143484436343633,0xF000000000000000}, //data[7],key[7]
		{0x1005578000000000,0xFF00000000000000}, //data[8],key[8]
		{0x0000000100557800,0xFFF0000000000000}, //data[9],key[9]
		{0x46696e6c4578616d,0xFFFF000000000000}}; //data[10],key[10]
ac_int<64,false> output; //to contain the encrypted data output of eaph iteration


/*Array containing the expected encrypted data output for eaph of the data and key pair for
evaluating the output of des.cpp*/
ac_int<64,false> Exp_op[10]= {0xd60592fdd11f6d1a,	//Expected_Ouput [1]
					 0xb486ec8110027077,	//Expected_Ouput [2]
					 0x3e46fe784b31f382,	//Expected_Ouput [3]
					 0xaf9249c93318b605,	//Expected_Ouput [4]
					 0x65b6c2bbdca73c02,	//Expected_Ouput [5]
					 0x6bf1b50ade32559a,	//Expected_Ouput [6]
					 0xe4868a2e4192873d,	//Expected_Ouput [7]
					 0x36c6634dcfe1e37c,	//Expected_Ouput [8]
					 0x9e731b5c3be3a898,	//Expected_Ouput [9]
					 0xf04756dfb2152639};	//Expected_Ouput [10]


CCS_MAIN(int argc,char *argv[])
{
	for(int i=0;i<10;i++)
	{
		output = CCS_DESIGN(des_check)(IN[i][0],IN[i][1]);         //Encrypted data  E[i] = (D[i],K[i])
		
		std::cout<<"\tDATA["<<i<<"]= ";
		std::cout<<std::hex<<IN[i][1];
		std::cout<<std::endl; 
		
		std::cout<<"\tKey["<<i<<"]= ";
		std::cout<<std::hex<<IN[i][0];
		std::cout<<std::endl; 
		
		std::cout<<"\tEncrypted data ["<<i<<"]= ";
		std::cout<<std::hex<<output;
		std::cout<<std::endl;
		if(output==Exp_op[i])									//Comparison with the expected output
			std::cout<<"Encryption result for (D["<<i+1<<"],K["<<i+1<<"]) is valid \n\n";
		else
		{
			std::cout<<"Encryption result for (D["<<i+1<<"],K["<<i+1<<"]) is invalid \n\n";
			//DES_RETURN(-1);
		}
	}
	CCS_RETURN(0);

}
