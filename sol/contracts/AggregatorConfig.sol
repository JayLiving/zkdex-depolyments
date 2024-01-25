// SPDX-License-Identifier: MIT
// Tells the Solidity compiler to compile only from v0.8.13 to v0.9.0
pragma solidity ^0.8.13;

import "./AggregatorLib.sol";

library AggregatorConfig {
    function fill_target_circuits_g2(uint256[] memory s) internal pure {
        s[2] = 17006984783035916014836003241042945838018391379603479329912940809520477208052;
        s[3] = 13560776910958896778309428450808722712362583089620853136731412215646945297830;
        s[4] = 12900589361605111856143562381318004229723309245412571888359653960504992734777;
        s[5] = 18091431719069275340788954644764755415339503689597559484185985670418402491565;

        s[8] = 11559732032986387107991004021392285783925812861821192530917403151452391805634;
        s[9] = 10857046999023057135944570762232829481370756359578518086990519993285655852781;
        s[10] = 17805874995975841540914202342111839520379459829704422454583296818431106115052;
        s[11] = 13392588948715843804641432497768002650278120570034223513918757245338268106653;
    }

    function fill_verify_circuits_g2(uint256[] memory s) internal pure {
        s[2] = 17006984783035916014836003241042945838018391379603479329912940809520477208052;
        s[3] = 13560776910958896778309428450808722712362583089620853136731412215646945297830;
        s[4] = 12900589361605111856143562381318004229723309245412571888359653960504992734777;
        s[5] = 18091431719069275340788954644764755415339503689597559484185985670418402491565;

        s[8] = 11559732032986387107991004021392285783925812861821192530917403151452391805634;
        s[9] = 10857046999023057135944570762232829481370756359578518086990519993285655852781;
        s[10] = 17805874995975841540914202342111839520379459829704422454583296818431106115052;
        s[11] = 13392588948715843804641432497768002650278120570034223513918757245338268106653;
    }

    function calc_verify_circuit_lagrange(uint256[] memory buf, uint256[] calldata instances) internal view {
        require(instances.length == 6, "invalid verify instances");

        
        buf[0] = 13534086339230182803823178260078315691269243572458753455438283544709107378988;
        buf[1] = 9053077977614827188269653632534212501565186534180282672519599630892718179094;
        
        buf[3] = 1182248640743623767540491743836266440912573685227647398908433914770314915225;
        buf[4] = 9429368987428417115130905411736012487080106837674787753905844601019486266080;
        
        buf[6] = 21613842333900036441111623390698012809691262735435467914394776261619759090471;
        buf[7] = 21326631510848551363930195205444603402736705261997903058894998906785152255378;
        
        buf[9] = 1055293327282739587537361571693340099564884782603422418718628678551788968847;
        buf[10] = 2237825140465957520070874243438766036808053424148372476209858719335556054383;
        
        buf[12] = 7060567223946742298889241292061131407326733943300243739474632780557721401113;
        buf[13] = 16854205461113899031223454068443095333110822726783054545210852141842934424687;
        
        buf[15] = 15015067058427996833800135565561906566823153338564700643183963047491913749925;
        buf[16] = 3855000058013848542714312321387180441211584144820134633194936687644157923873;
        
        
        
        for (uint256 i = 0; i < instances.length; i++) {
            buf[i * 3 + 2] = instances[i];
        }

        AggregatorLib.msm(buf, 0, instances.length);
    }

    function calc_target_circuit_lagrange(uint256[] calldata instances) internal view 
    returns (uint256[] memory buf) {
        buf = new uint256[](36);
        require(instances.length * 3 <= buf.length, "too many target instances");

        
        buf[0] = 13534086339230182803823178260078315691269243572458753455438283544709107378988;
        buf[1] = 9053077977614827188269653632534212501565186534180282672519599630892718179094;
        
        buf[3] = 1182248640743623767540491743836266440912573685227647398908433914770314915225;
        buf[4] = 9429368987428417115130905411736012487080106837674787753905844601019486266080;
        
        buf[6] = 21613842333900036441111623390698012809691262735435467914394776261619759090471;
        buf[7] = 21326631510848551363930195205444603402736705261997903058894998906785152255378;
        
        buf[9] = 1055293327282739587537361571693340099564884782603422418718628678551788968847;
        buf[10] = 2237825140465957520070874243438766036808053424148372476209858719335556054383;
        
        buf[12] = 7060567223946742298889241292061131407326733943300243739474632780557721401113;
        buf[13] = 16854205461113899031223454068443095333110822726783054545210852141842934424687;
        
        buf[15] = 15015067058427996833800135565561906566823153338564700643183963047491913749925;
        buf[16] = 3855000058013848542714312321387180441211584144820134633194936687644157923873;
        
        buf[18] = 16908554907288163635517490515694813726126531134055173572921760922325495328730;
        buf[19] = 648485786953989958263484837474211199123493099911668322631371070623463009551;
        
        buf[21] = 15365405711096430284328182720154888941606010055932689621276620830671574247825;
        buf[22] = 17577967057760246921973541811911363171312483069539864681069292819886057144136;
        
        buf[24] = 20068865537672115611992867055056538710649946064794012165500889121018547613257;
        buf[25] = 11222991587839503796645047838390251209588716282304085666493260003295573698124;
        
        buf[27] = 5979838017161566384434949613334445472237668161371220028334012211316612940146;
        buf[28] = 6477825410584461322172783713730160437053552106045321033829285598654965141878;
        
        buf[30] = 19088606259310715522295924029354677149302284072922943484391355041628342377851;
        buf[31] = 6093978805167199329758244397648256038566158509420695444151117868632397569514;
        
        buf[33] = 2418862627107441488554255787858151090731496209139614918587128253850008246164;
        buf[34] = 7780256158491836001044478336497547828514042537386727813734478136888417739816;
        
        
        
        for (uint256 i = 0; i < instances.length; i++) {
            buf[i * 3 + 2] = instances[i];
        }

        AggregatorLib.msm(buf, 0, instances.length);
    }

    function hash(uint256[] memory absorbing, uint256 length)
        private
        view
        returns (bytes32[1] memory v)
    {
        bool success;
        assembly {
            success := staticcall(
                sub(gas(), 2000),
                2,
                add(absorbing, 0x20),
                length,
                v,
                32
            )
            switch success
            case 0 {
                invalid()
            }
        }
        assert(success);
    }

    function squeeze_challenge(uint256[] memory absorbing, uint256 length) internal view returns (uint256 v) {
        absorbing[length] = 0;
        bytes32 res = hash(absorbing, length * 32 + 1)[0];
        absorbing[0] = uint256(res);
        v = absorbing[0] % AggregatorLib.p_mod;
    }

    function get_challenges(
        uint256[] calldata transcript,
        uint256[] memory buf // buf[0..1] is instance_commitment
    ) internal view {
        
        
        uint256[] memory absorbing = new uint256[](144);
        absorbing[0] = 15879489110266880244980987929634495413130417942906674605238790123791103029008;
        absorbing[1] = buf[0];
        absorbing[2] = buf[1];

        uint256 pos = 3;
        uint256 transcript_pos = 0;
        for (uint i = 0; i < 10; i ++) {
            AggregatorLib.check_on_curve(transcript[transcript_pos], transcript[transcript_pos + 1]);
            absorbing[pos++] = transcript[transcript_pos++];
            absorbing[pos++] = transcript[transcript_pos++];
        }
        // theta
        buf[2] = squeeze_challenge(absorbing, pos);
        
        
        pos = 1;
        for (uint i = 0; i < 6; i ++) {
            AggregatorLib.check_on_curve(transcript[transcript_pos], transcript[transcript_pos + 1]);
            absorbing[pos++] = transcript[transcript_pos++];
            absorbing[pos++] = transcript[transcript_pos++];
        }
        // beta
        buf[3] = squeeze_challenge(absorbing, pos);
        
        
        pos = 1;
        // gamma
        buf[4] = squeeze_challenge(absorbing, pos);
        
        
        pos = 1;
        for (uint i = 0; i < 9; i ++) {
            AggregatorLib.check_on_curve(transcript[transcript_pos], transcript[transcript_pos + 1]);
            absorbing[pos++] = transcript[transcript_pos++];
            absorbing[pos++] = transcript[transcript_pos++];
        }
        // y
        buf[5] = squeeze_challenge(absorbing, pos);
        
        
        pos = 1;
        for (uint i = 0; i < 3; i ++) {
            AggregatorLib.check_on_curve(transcript[transcript_pos], transcript[transcript_pos + 1]);
            absorbing[pos++] = transcript[transcript_pos++];
            absorbing[pos++] = transcript[transcript_pos++];
        }
        //x
        buf[6] = squeeze_challenge(absorbing, pos);
        
        
        pos = 1;
        for (uint i = 0; i < 72; i ++) {
            absorbing[pos++] = transcript[transcript_pos++];
        }
        //v
        buf[7] = squeeze_challenge(absorbing, pos);
        
        
        pos = 1;
        //u
        buf[8] = squeeze_challenge(absorbing, pos);
        
        

        for (; transcript_pos < transcript.length; transcript_pos += 2) {
            AggregatorLib.check_on_curve(transcript[transcript_pos], transcript[transcript_pos + 1]);
        }
    }
}
