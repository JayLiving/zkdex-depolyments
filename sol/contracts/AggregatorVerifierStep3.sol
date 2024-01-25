// SPDX-License-Identifier: MIT
// Tells the Solidity compiler to compile only from v0.8.13 to v0.9.0
pragma solidity ^0.8.13;

import "./AggregatorLib.sol";

contract AggregatorVerifierCoreStep3 {
    function verify_proof(
        uint256[] calldata transcript,
        uint256[] calldata aux,
        uint256[] memory buf
    ) public view returns (uint256[] memory)  {
        (buf[177], buf[178]) = (transcript[52], transcript[53]);
buf[179] = mulmod(buf[92], buf[99], AggregatorLib.p_mod);
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[50], transcript[51]);
buf[179] = buf[92];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (buf[0], buf[1]);
buf[179] = buf[31];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[20], transcript[21]);
buf[179] = addmod(buf[23], buf[52], AggregatorLib.p_mod);
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[22], transcript[23]);
buf[179] = buf[51];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[42], transcript[43]);
buf[179] = addmod(buf[46], buf[165], AggregatorLib.p_mod);
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[24], transcript[25]);
buf[179] = addmod(buf[24], buf[29], AggregatorLib.p_mod);
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[26], transcript[27]);
buf[179] = buf[59];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[44], transcript[45]);
buf[179] = addmod(buf[53], buf[168], AggregatorLib.p_mod);
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[28], transcript[29]);
buf[179] = addmod(buf[18], buf[60], AggregatorLib.p_mod);
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[30], transcript[31]);
buf[179] = buf[57];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[46], transcript[47]);
buf[179] = addmod(buf[58], buf[8], AggregatorLib.p_mod);
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (20319907269213992378472069911515402565107811765460068761021022739688548951616, 4385802359391610266561184244403350352265619075206663567891267067637040865487);
buf[179] = buf[82];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (19109731311180306263234443089476653124639021201901817716841996303179691383632, 16337484587677555992720388293496077332690647313838486897029319736556298795255);
buf[179] = buf[81];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (10456971285863494316601935316623402988214437980783386485571144263898168789450, 18874235980184782912671672508011235127361906356996782822118749220827050414720);
buf[179] = buf[83];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (15185237846939313884497858534191864138956466037931847034217564407720316339772, 5186191410523832061530503381228067987812609903638162572668563124396142855363);
buf[179] = buf[75];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (21552356668109857178128530664328323161216453462621703020574159287218318436378, 14904878659660297935488930744883721266733791103987830366197466542839483357400);
buf[179] = buf[87];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (7549948037112618000205810631233802969422994042439461423166973842592313303329, 11271097445167982939459289987099357567303389918005834062045457361100395094030);
buf[179] = buf[86];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (6382503218761094144424604981276332145977502078025831198810944707344719313211, 12883441963567714806207181888207646694819944190945012616842362294390456806490);
buf[179] = buf[88];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (11918400268963386653480081976389417056226506934715637573729703117162434530790, 8515534833861981922181878271748069144842980975288685694410972467320063731087);
buf[179] = buf[85];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (659638607922479782465352739737116143748855463207319680592912841094780449319, 13588443013239794763282813989904573048977718034009737562126766290041658658495);
buf[179] = buf[91];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (3159427074412052813278551324439272560885586697965938496170019987677740292086, 20367206387122472299815071033927832855897246070975687110883173320512785270007);
buf[179] = buf[90];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[32], transcript[33]);
buf[179] = addmod(addmod(buf[17], buf[44], AggregatorLib.p_mod), buf[162], AggregatorLib.p_mod);
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[34], transcript[35]);
buf[179] = addmod(addmod(buf[22], buf[36], AggregatorLib.p_mod), buf[161], AggregatorLib.p_mod);
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[36], transcript[37]);
buf[179] = addmod(addmod(buf[20], buf[48], AggregatorLib.p_mod), buf[164], AggregatorLib.p_mod);
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[38], transcript[39]);
buf[179] = addmod(addmod(buf[21], buf[47], AggregatorLib.p_mod), buf[160], AggregatorLib.p_mod);
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[40], transcript[41]);
buf[179] = addmod(buf[49], buf[166], AggregatorLib.p_mod);
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[48], transcript[49]);
buf[179] = buf[16];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[128], transcript[129]);
buf[179] = mulmod(buf[17], mulmod(21710372849001950800533397158415938114909991150039389063546734567764856596059, buf[6], AggregatorLib.p_mod), AggregatorLib.p_mod);
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[130], transcript[131]);
buf[179] = mulmod(buf[18], mulmod(9741553891420464328295280489650144566903017206473301385034033384879943874347, buf[6], AggregatorLib.p_mod), AggregatorLib.p_mod);
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[132], transcript[133]);
buf[179] = mulmod(buf[16], buf[6], AggregatorLib.p_mod);
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[134], transcript[135]);
buf[179] = mulmod(buf[8], mulmod(8374374965308410102411073611984011876711565317741801500439755773472076597347, buf[6], AggregatorLib.p_mod), AggregatorLib.p_mod);
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[136], transcript[137]);
buf[179] = mulmod(11211301017135681023579411905410872569206244553457844956874280139879520583390, buf[6], AggregatorLib.p_mod);
AggregatorLib.ecc_mul_add(buf, 175);


        uint256[] memory ret = new uint256[](4);
        ret[0] = buf[170];
        ret[1] = buf[171];
        ret[2] = buf[175];
        ret[3] = buf[176];

        return ret;
    }
}
