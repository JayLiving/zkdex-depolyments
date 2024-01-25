// SPDX-License-Identifier: MIT
// Tells the Solidity compiler to compile only from v0.8.13 to v0.9.0
pragma solidity ^0.8.13;

import "./AggregatorLib.sol";

contract AggregatorVerifierCoreStep2 {
    function verify_proof(
        uint256[] calldata transcript,
        uint256[] calldata aux,
        uint256[] memory buf
    ) public view returns (uint256[] memory)  {
        buf[126] = AggregatorLib.fr_pow(4131629893567559867359510883348571134090853742863529169391034518566172092834, 6);
buf[127] = mulmod(buf[109], buf[126], AggregatorLib.p_mod);
buf[128] = addmod(mulmod(addmod(buf[124], mulmod(buf[3], transcript[96], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(addmod(buf[125], mulmod(buf[3], transcript[95], AggregatorLib.p_mod), AggregatorLib.p_mod), transcript[109], AggregatorLib.p_mod), AggregatorLib.p_mod), AggregatorLib.p_mod - mulmod(addmod(buf[124], mulmod(4131629893567559867359510883348571134090853742863529169391034518566172092834, buf[127], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(addmod(buf[125], buf[127], AggregatorLib.p_mod), transcript[108], AggregatorLib.p_mod), AggregatorLib.p_mod), AggregatorLib.p_mod);
buf[129] = mulmod(addmod(mulmod(addmod(buf[118], mulmod(buf[123], buf[112], AggregatorLib.p_mod), AggregatorLib.p_mod), buf[5], AggregatorLib.p_mod), mulmod(buf[128], buf[112], AggregatorLib.p_mod), AggregatorLib.p_mod), buf[5], AggregatorLib.p_mod);
buf[130] = addmod(transcript[56], buf[4], AggregatorLib.p_mod);
buf[131] = addmod(transcript[66], buf[4], AggregatorLib.p_mod);
buf[132] = AggregatorLib.fr_pow(4131629893567559867359510883348571134090853742863529169391034518566172092834, 8);
buf[133] = mulmod(buf[109], buf[132], AggregatorLib.p_mod);
buf[134] = addmod(mulmod(addmod(buf[130], mulmod(buf[3], transcript[98], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(addmod(buf[131], mulmod(buf[3], transcript[97], AggregatorLib.p_mod), AggregatorLib.p_mod), transcript[112], AggregatorLib.p_mod), AggregatorLib.p_mod), AggregatorLib.p_mod - mulmod(addmod(buf[130], mulmod(4131629893567559867359510883348571134090853742863529169391034518566172092834, buf[133], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(addmod(buf[131], buf[133], AggregatorLib.p_mod), transcript[111], AggregatorLib.p_mod), AggregatorLib.p_mod), AggregatorLib.p_mod);
buf[135] = mulmod(addmod(mulmod(addmod(buf[129], mulmod(buf[134], buf[112], AggregatorLib.p_mod), AggregatorLib.p_mod), buf[5], AggregatorLib.p_mod), mulmod(buf[101], addmod(1, AggregatorLib.p_mod - transcript[113], AggregatorLib.p_mod), AggregatorLib.p_mod), AggregatorLib.p_mod), buf[5], AggregatorLib.p_mod);
buf[136] = mulmod(addmod(buf[135], mulmod(buf[103], addmod(mulmod(transcript[113], transcript[113], AggregatorLib.p_mod), AggregatorLib.p_mod - transcript[113], AggregatorLib.p_mod), AggregatorLib.p_mod), AggregatorLib.p_mod), buf[5], AggregatorLib.p_mod);
buf[137] = mulmod(transcript[63], buf[2], AggregatorLib.p_mod);
buf[138] = addmod(mulmod(addmod(buf[137], addmod(mulmod(340282366920938463463374607431768211456, transcript[64], AggregatorLib.p_mod), transcript[81], AggregatorLib.p_mod), AggregatorLib.p_mod), buf[2], AggregatorLib.p_mod), buf[3], AggregatorLib.p_mod);
buf[139] = mulmod(mulmod(transcript[113], buf[138], AggregatorLib.p_mod), addmod(addmod(mulmod(addmod(buf[137], transcript[81], AggregatorLib.p_mod), buf[2], AggregatorLib.p_mod), transcript[82], AggregatorLib.p_mod), buf[4], AggregatorLib.p_mod), AggregatorLib.p_mod);
buf[140] = mulmod(addmod(mulmod(mulmod(transcript[114], addmod(transcript[115], buf[3], AggregatorLib.p_mod), AggregatorLib.p_mod), addmod(transcript[117], buf[4], AggregatorLib.p_mod), AggregatorLib.p_mod), AggregatorLib.p_mod - buf[139], AggregatorLib.p_mod), buf[112], AggregatorLib.p_mod);
buf[141] = addmod(transcript[115], AggregatorLib.p_mod - transcript[117], AggregatorLib.p_mod);
buf[142] = addmod(mulmod(addmod(mulmod(addmod(buf[136], buf[140], AggregatorLib.p_mod), buf[5], AggregatorLib.p_mod), mulmod(buf[101], buf[141], AggregatorLib.p_mod), AggregatorLib.p_mod), buf[5], AggregatorLib.p_mod), mulmod(mulmod(buf[141], addmod(transcript[115], AggregatorLib.p_mod - transcript[116], AggregatorLib.p_mod), AggregatorLib.p_mod), buf[112], AggregatorLib.p_mod), AggregatorLib.p_mod);
buf[143] = addmod(mulmod(addmod(mulmod(buf[142], buf[5], AggregatorLib.p_mod), mulmod(buf[101], addmod(1, AggregatorLib.p_mod - transcript[118], AggregatorLib.p_mod), AggregatorLib.p_mod), AggregatorLib.p_mod), buf[5], AggregatorLib.p_mod), mulmod(buf[103], addmod(mulmod(transcript[118], transcript[118], AggregatorLib.p_mod), AggregatorLib.p_mod - transcript[118], AggregatorLib.p_mod), AggregatorLib.p_mod), AggregatorLib.p_mod);
buf[144] = addmod(addmod(mulmod(transcript[84], buf[2], AggregatorLib.p_mod), transcript[85], AggregatorLib.p_mod), buf[4], AggregatorLib.p_mod);
buf[145] = mulmod(mulmod(transcript[118], addmod(addmod(mulmod(transcript[83], buf[2], AggregatorLib.p_mod), transcript[66], AggregatorLib.p_mod), buf[3], AggregatorLib.p_mod), AggregatorLib.p_mod), buf[144], AggregatorLib.p_mod);
buf[146] = mulmod(addmod(mulmod(mulmod(transcript[119], addmod(transcript[120], buf[3], AggregatorLib.p_mod), AggregatorLib.p_mod), addmod(transcript[122], buf[4], AggregatorLib.p_mod), AggregatorLib.p_mod), AggregatorLib.p_mod - buf[145], AggregatorLib.p_mod), buf[112], AggregatorLib.p_mod);
buf[147] = addmod(transcript[120], AggregatorLib.p_mod - transcript[122], AggregatorLib.p_mod);
buf[148] = mulmod(addmod(mulmod(addmod(mulmod(buf[143], buf[5], AggregatorLib.p_mod), buf[146], AggregatorLib.p_mod), buf[5], AggregatorLib.p_mod), mulmod(buf[101], buf[147], AggregatorLib.p_mod), AggregatorLib.p_mod), buf[5], AggregatorLib.p_mod);
buf[149] = mulmod(addmod(buf[148], mulmod(mulmod(buf[147], addmod(transcript[120], AggregatorLib.p_mod - transcript[121], AggregatorLib.p_mod), AggregatorLib.p_mod), buf[112], AggregatorLib.p_mod), AggregatorLib.p_mod), buf[5], AggregatorLib.p_mod);
buf[150] = addmod(mulmod(addmod(buf[149], mulmod(buf[101], addmod(1, AggregatorLib.p_mod - transcript[123], AggregatorLib.p_mod), AggregatorLib.p_mod), AggregatorLib.p_mod), buf[5], AggregatorLib.p_mod), mulmod(buf[103], addmod(mulmod(transcript[123], transcript[123], AggregatorLib.p_mod), AggregatorLib.p_mod - transcript[123], AggregatorLib.p_mod), AggregatorLib.p_mod), AggregatorLib.p_mod);
buf[151] = mulmod(mulmod(transcript[123], addmod(addmod(mulmod(18, buf[2], AggregatorLib.p_mod), transcript[67], AggregatorLib.p_mod), buf[3], AggregatorLib.p_mod), AggregatorLib.p_mod), buf[144], AggregatorLib.p_mod);
buf[152] = mulmod(addmod(mulmod(mulmod(transcript[124], addmod(transcript[125], buf[3], AggregatorLib.p_mod), AggregatorLib.p_mod), addmod(transcript[127], buf[4], AggregatorLib.p_mod), AggregatorLib.p_mod), AggregatorLib.p_mod - buf[151], AggregatorLib.p_mod), buf[112], AggregatorLib.p_mod);
buf[153] = addmod(transcript[125], AggregatorLib.p_mod - transcript[127], AggregatorLib.p_mod);
buf[154] = mulmod(addmod(mulmod(addmod(mulmod(buf[150], buf[5], AggregatorLib.p_mod), buf[152], AggregatorLib.p_mod), buf[5], AggregatorLib.p_mod), mulmod(buf[101], buf[153], AggregatorLib.p_mod), AggregatorLib.p_mod), buf[5], AggregatorLib.p_mod);
buf[155] = AggregatorLib.fr_div(addmod(buf[154], mulmod(mulmod(buf[153], addmod(transcript[125], AggregatorLib.p_mod - transcript[126], AggregatorLib.p_mod), AggregatorLib.p_mod), buf[112], AggregatorLib.p_mod), AggregatorLib.p_mod), buf[100], aux[7]);
buf[156] = addmod(addmod(addmod(addmod(buf[89], mulmod(buf[91], transcript[97], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[90], transcript[98], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[92], buf[155], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[16], transcript[88], AggregatorLib.p_mod), AggregatorLib.p_mod);
buf[157] = mulmod(buf[8], buf[27], AggregatorLib.p_mod);
buf[158] = mulmod(buf[157], buf[19], AggregatorLib.p_mod);
buf[159] = mulmod(buf[157], buf[7], AggregatorLib.p_mod);
buf[160] = mulmod(buf[8], buf[26], AggregatorLib.p_mod);
buf[161] = mulmod(buf[160], buf[19], AggregatorLib.p_mod);
buf[162] = mulmod(buf[161], buf[7], AggregatorLib.p_mod);
buf[163] = addmod(addmod(addmod(addmod(mulmod(buf[158], transcript[62], AggregatorLib.p_mod), mulmod(buf[159], transcript[68], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[157], transcript[70], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[162], transcript[100], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[161], transcript[103], AggregatorLib.p_mod), AggregatorLib.p_mod);
buf[164] = mulmod(buf[160], buf[7], AggregatorLib.p_mod);
buf[165] = mulmod(buf[8], buf[19], AggregatorLib.p_mod);
buf[166] = mulmod(buf[165], buf[7], AggregatorLib.p_mod);
buf[167] = addmod(addmod(addmod(addmod(buf[163], mulmod(buf[164], transcript[106], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[160], transcript[109], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[166], transcript[112], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[165], transcript[114], AggregatorLib.p_mod), AggregatorLib.p_mod);
buf[168] = mulmod(buf[8], buf[7], AggregatorLib.p_mod);
buf[169] = addmod(addmod(addmod(buf[25], buf[156], AggregatorLib.p_mod), addmod(addmod(buf[167], mulmod(buf[168], transcript[119], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[8], transcript[124], AggregatorLib.p_mod), AggregatorLib.p_mod), AggregatorLib.p_mod), addmod(mulmod(buf[7], transcript[69], AggregatorLib.p_mod), transcript[71], AggregatorLib.p_mod), AggregatorLib.p_mod);
(buf[175], buf[176]) = (1, 21888242871839275222246405745257275088696311157297823662689037894645226208581);
buf[177] = buf[169];
AggregatorLib.ecc_mul(buf, 175);
(buf[177], buf[178]) = (transcript[0], transcript[1]);
buf[179] = buf[33];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[2], transcript[3]);
buf[179] = buf[32];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[4], transcript[5]);
buf[179] = buf[34];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[6], transcript[7]);
buf[179] = buf[30];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[8], transcript[9]);
buf[179] = addmod(buf[39], buf[158], AggregatorLib.p_mod);
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[10], transcript[11]);
buf[179] = buf[38];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[12], transcript[13]);
buf[179] = buf[40];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[14], transcript[15]);
buf[179] = buf[37];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[16], transcript[17]);
buf[179] = addmod(addmod(buf[43], buf[157], AggregatorLib.p_mod), 1, AggregatorLib.p_mod);
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[18], transcript[19]);
buf[179] = addmod(addmod(buf[42], buf[159], AggregatorLib.p_mod), buf[7], AggregatorLib.p_mod);
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (2041882486577450296591377996150630591563499039931395971622193628986581431252, 10843764254608448912541400264550916947346706086004427112957712612414734965236);
buf[179] = buf[64];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (20576003220071606382256012713450468203219554805940744853005532389900650734547, 18641917156683516540230188992694555661820684665908917285381222074878668525087);
buf[179] = buf[56];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (16232067259025139838386971723423803613655982764710463059657831336931229114380, 21632324432812825638466173867654661409394799010105835439687404239779737165852);
buf[179] = buf[73];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (10245234450745376073696150050571093811388287600105565420629903761315533839997, 20004052656319976250275604933603516557726900360471249893517292342029754478614);
buf[179] = buf[79];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (18097488358369014230957668306050981569221398778599253301298358803677483015398, 15064652107458269085398431673658545765357631190803764747085429564250067330095);
buf[179] = buf[76];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (1908318773912527556779365179834809842256376583557526396632229919193236025843, 14947066273880868817521120413838912189974541513253260044497045885912976491421);
buf[179] = buf[55];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (9621060932553241457331309181312468446375012848693562416915297961501104714797, 18774224011527979955178720803820949077824414817387957068075380161701868796982);
buf[179] = buf[78];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (7332275780326935691999111227339181700750973508937555651107089016408829877447, 10101962784746658718602667114782992736503033294933308373536577801383886245995);
buf[179] = buf[77];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (6783466191516663777061454677207338882352948713383148790763002112977768492349, 7435962576459818162664909156988171248403077943380306130108115415256818994498);
buf[179] = buf[68];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (14936878614821450088015656458988276734577125978069071770568214315325218787030, 9610388674191308230844548631496145588131361691502206842626938860011716117567);
buf[179] = buf[67];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (15216622267215734648028339330813616132154767965271855517043998818450400323245, 14979905910643338114527592500117001347748745237408709238836194921126377048064);
buf[179] = buf[69];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (17839402780627424335595505427740072599765075733493533757306152265209344419150, 11243592350626014306781963891590713015730926866336788583241093107555590934776);
buf[179] = buf[66];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (5846376527104024288285206546934987191260601522114128241672250738693443715113, 14866601622144815624692580716784839189302190115324898717137236630151376465959);
buf[179] = buf[72];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (288665829279797013816270445369203436821257052445806230491882175767498504524, 5410706999082134194435384578882374608948831116345232784630440521039409126437);
buf[179] = buf[62];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (6957509403559833488931358968203666713630359629854219938896736861262786159882, 18003773771474103477170670280981234359590059378771776697302262477299747556436);
buf[179] = buf[63];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (19629527230794937116337169555363303742426562606470776351420301657532628878896, 6487343612093247214076678531794936713053754005959225480178605929733732803069);
buf[179] = buf[71];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[54], transcript[55]);
buf[179] = mulmod(buf[92], mulmod(buf[99], buf[99], AggregatorLib.p_mod), AggregatorLib.p_mod);
AggregatorLib.ecc_mul_add(buf, 175);


        return buf;
    }
}
