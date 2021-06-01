clc % Clear command window

% Read in the data for the FIS
filename = ('MultipleNPCSkills.xls');

%---------------------------------------------------------------------------------------------------------------------%
                                            %FIRST SYSTEM (sensual ability)
%---------------------------------------------------------------------------------------------------------------------%

NPCSensualSkillData = xlsread(filename); % Read and store data file

a = newfis('NPC Sensual Skill'); % NPC sensual ability inference system

a=addvar(a,'input','Weapon Recoil Pattern and Sight Kick Control (accuracy %)',[0 100]); % Weapon handling accuracy

a=addmf(a,'input',1,'Very Poor','trapmf',[-10 0 10 20]); % Very poor accuracy
a=addmf(a,'input',1,'Poor','trimf',[10 20 30]); % Poor accuracy
a=addmf(a,'input',1,'Medium','trimf',[20 40 50]); % Medium accuracy
a=addmf(a,'input',1,'Good','trimf',[40 50 70]); % Good accuracy
a=addmf(a,'input',1,'Very Good','trapmf',[60 70 100 110]); % Very good accuracy

a=addvar(a,'input','Reaction and Responsiveness Time (seconds)',[0 2]); % Response time from player awareness

a=addmf(a,'input',2,'Very Fast','trapmf',[0.21 0.21 0.25 0.3]); % Very fast reaction time
a=addmf(a,'input',2,'Fast','trimf',[0.25 0.4 0.6]); % Fast reaction time
a=addmf(a,'input',2,'Medium','trimf',[0.4 0.6 0.8]); % Medium reaction time
a=addmf(a,'input',2,'Slow','trimf',[0.6 1 1.4]); % Slow reaction time
a=addmf(a,'input',2,'Very Slow','trapmf',[1 1.5 2 2.5]); % Very slow reaction time

a=addvar(a,'input','Radius of Player Awareness (metres)',[0 100]); % Radius of awareness (sight and hear)

a=addmf(a,'input',3,'Very Close','trapmf',[-15 0 5 10]); % Very close radius of awareness
a=addmf(a,'input',3,'Close','trapmf',[0 10 20 30]); % Close radius of awareness
a=addmf(a,'input',3,'Medium','trapmf',[15 25 40 55]); % Medium radius of awareness
a=addmf(a,'input',3,'Far','trapmf',[35 45 65 75]); % Far radius of awareness
a=addmf(a,'input',3,'Very Far','trapmf',[55 70 100 110]); % Very far radius of awareness

a=addvar(a,'output','NPC Sensual Skill (skill level)',[1 5]); % NPC sensing ability

a=addmf(a,'output',1,'Very Low Skill','trimf', [0 1 2]); % Very low sensing ability
a=addmf(a,'output',1,'Low Skill','trimf',[1 2 3]); % Low sensing ability
a=addmf(a,'output',1,'Medium Skill','trimf',[2 3 4]); % Good sensing ability
a=addmf(a,'output',1,'High Skill','trimf',[3 4 5]); % High sensing ability
a=addmf(a,'output',1,'Very High Skill','trimf',[4 5 6]); % Very high sensing ability

% Rules for the sensual ability FIS
rule1=[1 5 1 1 1 1]; % Very poor accuracy
rule2=[1 5 2 1 1 1];
rule3=[1 5 3 1 1 1];
rule4=[1 5 4 1 1 1];
rule5=[1 5 5 1 1 1];
rule6=[1 4 1 1 1 1];
rule7=[1 4 2 1 1 1];
rule8=[1 4 3 1 1 1];
rule9=[1 4 4 1 1 1];
rule10=[1 4 5 1 1 1];
rule11=[1 3 1 1 1 1];
rule12=[1 3 2 1 1 1];
rule13=[1 3 3 1 1 1];
rule14=[1 3 4 1 1 1];
rule15=[1 3 5 1 1 1];
rule16=[1 2 1 1 1 1];
rule17=[1 2 2 1 1 1];
rule18=[1 2 3 1 1 1];
rule19=[1 2 4 1 1 1];
rule20=[1 2 5 1 1 1];
rule21=[1 1 1 1 1 1];
rule22=[1 1 2 1 1 1];
rule23=[1 1 3 1 1 1];
rule24=[1 1 4 1 1 1];
rule25=[1 1 5 1 1 1];

rule26=[2 5 1 1 1 1];%Poor accuracy
rule27=[2 5	2 2	1 1];
rule28=[2 5 3 2	1 1];
rule29=[2 5	4 2	1 1];
rule30=[2 5	5 2	1 1];
rule31=[2 4	1 1	1 1];
rule32=[2 4	2 2	1 1];
rule33=[2 4	3 2	1 1];
rule34=[2 4	4 2	1 1];
rule35=[2 4	5 2	1 1];
rule36=[2 3	1 1	1 1];
rule37=[2 3	2 2	1 1];
rule38=[2 3	3 3	1 1];
rule39=[2 3	4 3	1 1];
rule40=[2 3 5 3	1 1];
rule41=[2 2	1 1	1 1];
rule42=[2 2	2 2	1 1];
rule43=[2 2	3 2	1 1];
rule44=[2 2	4 3	1 1];
rule45=[2 2	5 3	1 1];
rule46=[2 1	1 1	1 1];
rule47=[2 1	2 2	1 1];
rule48=[2 1	3 3	1 1];
rule49=[2 1	4 3	1 1];
rule50=[2 1	5 3	1 1];

rule51=[3 5	1 1	1 1]; % Medium accuracy
rule52=[3 5	2 2	1 1];
rule53=[3 5	3 3	1 1];
rule54=[3 5	4 3	1 1];
rule55=[3 5	5 3	1 1];
rule56=[3 4	1 1	1 1];
rule57=[3 4	2 2	1 1];
rule58=[3 4	3 3	1 1];
rule59=[3 4	4 4	1 1];
rule60=[3 4	5 4	1 1];
rule61=[3 3	1 1	1 1];
rule62=[3 3	2 2	1 1];
rule63=[3 3	3 3	1 1];
rule64=[3 3	4 4	1 1];
rule65=[3 3	5 4	1 1];
rule66=[3 2	1 1	1 1];
rule67=[3 2	2 2	1 1];
rule68=[3 2	3 3	1 1];
rule69=[3 2	4 4	1 1];
rule70=[3 2	5 4	1 1];
rule71=[3 1	1 1	1 1];
rule72=[3 1	2 2	1 1];
rule73=[3 1	3 3	1 1];
rule74=[3 1	4 4	1 1];
rule75=[3 1	5 4	1 1];

rule76=[4 5 1 1 1 1]; % Good accuracy
rule77=[4 5 2 2 1 1];
rule78=[4 5 3 3 1 1];
rule79=[4 5 4 4 1 1];
rule80=[4 5 5 4 1 1];
rule81=[4 4 1 1 1 1];
rule82=[4 4	2 2	1 1];
rule83=[4 4	3 3	1 1];
rule84=[4 4	4 4	1 1];
rule85=[4 4	5 4	1 1];
rule86=[4 3	1 1	1 1];
rule87=[4 3	2 2	1 1];
rule88=[4 3	3 3	1 1];
rule89=[4 3	4 4	1 1];
rule90=[4 3	5 4	1 1];
rule91=[4 2	1 1	1 1];
rule92=[4 2	2 2	1 1];
rule93=[4 2	3 3	1 1];
rule94=[4 2	4 4	1 1];
rule95=[4 2	5 5	1 1];
rule96=[4 1	1 1	1 1];
rule97=[4 1	2 2	1 1];
rule98=[4 1	3 4	1 1];
rule99=[4 1	4 4	1 1];
rule100=[4 1 5 5 1 1];

rule101=[5 5 1 1 1 1]; % Very good accuracy
rule102=[5 5 2 2 1 1];
rule103=[5 5 3 3 1 1];
rule104=[5 5 4 4 1 1];
rule105=[5 5 5 5 1 1];
rule106=[5 4 1 1 1 1];
rule107=[5 4 2 2 1 1];
rule108=[5 4 3 3 1 1];
rule109=[5 4 4 4 1 1];
rule110=[5 4 5 5 1 1];
rule111=[5 3 1 1 1 1];
rule112=[5 3 2 2 1 1];
rule113=[5 3 3 3 1 1];
rule114=[5 3 4 4 1 1];
rule115=[5 3 5 5 1 1];
rule116=[5 2 1 1 1 1];
rule117=[5 2 2 2 1 1];
rule118=[5 2 3 3 1 1];
rule119=[5 2 4 4 1 1];
rule120=[5 2 5 5 1 1];
rule121=[5 1 1 1 1 1];
rule122=[5 1 2 3 1 1];
rule123=[5 1 3 4 1 1];
rule124=[5 1 4 5 1 1];
rule125=[5 1 5 5 1 1];

%rule list
ruleListA = [rule1; rule2; rule3; rule4; rule5;...
             rule6; rule7; rule8; rule9; rule10;...
             rule11; rule12; rule13; rule14; rule15;...
             rule16; rule17; rule18; rule19; rule20;...
             rule21; rule22; rule23; rule24; rule25;...
             rule26; rule27; rule28; rule29; rule30;...
             rule31; rule32; rule33; rule34; rule35;...
             rule36; rule37; rule38; rule39; rule40;...
             rule41; rule42; rule43; rule44; rule45;...
             rule46; rule47; rule48; rule49; rule50;...
             rule51; rule52; rule53; rule54; rule55;...
             rule56; rule57; rule58; rule59; rule60;...
             rule61; rule62; rule63; rule64; rule65;...
             rule66; rule67; rule68; rule69; rule70;...
             rule71; rule72; rule73; rule74; rule75;...
             rule76; rule77; rule78; rule79; rule80;...
             rule81; rule82; rule83; rule84; rule85;...
             rule86; rule87; rule88; rule89; rule90;...
             rule91; rule92; rule93; rule94; rule95;...
             rule96; rule97; rule98; rule99; rule100;...
             rule101; rule102; rule103; rule104; rule105;...
             rule106; rule107; rule108; rule109; rule110;...
             rule111; rule112; rule113; rule114; rule115;...
             rule116; rule117; rule118; rule119; rule120;...
             rule121; rule122; rule123; rule124; rule125];

a = addrule(a,ruleListA);

% Print the rules to the workspace
rule = showrule(a)

%defuzzification methods
a.defuzzMethod = 'centroid';
%a.defuzzMethod = 'bisector';
%a.defuzzMethod = 'mom';
%a.defuzzMethod = 'som';
%a.defuzzMethod = 'lom';

for i=1:size(NPCSensualSkillData, 1)
        evalNPCSensualSkillData = evalfis([NPCSensualSkillData(i, 1), NPCSensualSkillData(i, 2), NPCSensualSkillData(i, 3)], a);
        fprintf('%d) In(1): %.2f, In(2) %.2f, In(3) %.2f,  => Out: %.2f \n\n', i, NPCSensualSkillData(i, 1), NPCSensualSkillData(i, 2), NPCSensualSkillData(i, 3), evalNPCSensualSkillData);  
        xlswrite('output.xls', evalNPCSensualSkillData, 1, sprintf('A%d', i+1));
end

%---------------------------------------------------------------------------------------------------------------------%
                                        %SECOND SYSTEM (objetive potential)
%---------------------------------------------------------------------------------------------------------------------%

NPCObjectiveAdherenceData = xlsread(filename); % Read and store data file

b = newfis('NPC Objective Potential'); % NPC objective potential inference system

b=addvar(b,'input','New Objective Responsiveness Time (seconds)',[0 10]); % Responsiveness to occurence of new objectives

b=addmf(b,'input',1,'Very Fast','trapmf',[-2 0 1 1.5]); % Very fast responsiveness
b=addmf(b,'input',1,'Fast','trapmf',[0.75 1.25 1.75 2.25]); % Fast responsiveness
b=addmf(b,'input',1,'Medium','trapmf',[1.5 2 2.5 3]); % Medium responsiveness
b=addmf(b,'input',1,'Slow','trapmf',[2.5 3 4 5]); % Slow responsiveness
b=addmf(b,'input',1,'Very Slow','trapmf',[4 5 10 11]); % Very slow responsiveness

b=addvar(b,'input','Objective Defensive and Offensive Pace (pace %)',[0 100]); % Behaviour of gameplay approach around or on current objective

b=addmf(b,'input',2,'Passive','gaussmf',[7.5 0]); % Passive behaviour
b=addmf(b,'input',2,'Slow','gaussmf',[7.5 25]); % Slow behaviour
b=addmf(b,'input',2,'Medium','gaussmf',[7.5 50]); % Medium behaviour
b=addmf(b,'input',2,'Fast','gaussmf',[7.5 75]); % Fast behaviour
b=addmf(b,'input',2,'Aggressive','gaussmf',[7.5 100]); % Aggressive behaviour

b=addvar(b,'input','Objective Priority Level',[1 5]); % Priority to have objective gameplay orientation

b=addmf(b,'input',3,'Very Low Priority','trimf',[0 1 2]); % Very low priority
b=addmf(b,'input',3,'Low Priority','trimf',[1 2 3]); % Low priority
b=addmf(b,'input',3,'Medium Priority','trimf',[2 3 4]); % Medium priority
b=addmf(b,'input',3,'High Priority','trimf',[3 4 5]); % High priority
b=addmf(b,'input',3,'Very High Priority','trimf',[4 5 6]); % Very high priority

b=addvar(b,'output','NPC Objective Potential (%)',[0 100]); % NPC objective ability

b=addmf(b,'output',1,'Very Low Potential','gaussmf', [7.5 0]); % Very low objective ability
b=addmf(b,'output',1,'Low Potential','gaussmf',[7.5 25]); % Low objective ability
b=addmf(b,'output',1,'Medium Potential','gaussmf',[7.5 50]); % Good objective ability
b=addmf(b,'output',1,'High Potential','gaussmf',[7.5 75]); % High objective aility
b=addmf(b,'output',1,'Very High Potential','gaussmf',[7.5 100]); % Very high objective ability

% Rules for the objective potential FIS
rule126=[5 1 1 1 1 1]; % Very slow responsiveness
rule127=[5 1 2 1 1 1];
rule128=[5 1 3 1 1 1];
rule129=[5 1 4 1 1 1];
rule130=[5 1 5 1 1 1];
rule131=[5 2 1 1 1 1];
rule132=[5 2 2 1 1 1];
rule133=[5 2 3 2 1 1];
rule134=[5 2 4 2 1 1];
rule135=[5 2 5 2 1 1];
rule136=[5 3 1 1 1 1];
rule137=[5 3 2 2 1 1];
rule138=[5 3 3 2 1 1];
rule139=[5 3 4 2 1 1];
rule140=[5 3 5 2 1 1];
rule141=[5 4 1 1 1 1];
rule142=[5 4 2 2 1 1];
rule143=[5 4 3 2 1 1];
rule144=[5 4 4 3 1 1];
rule145=[5 4 5 3 1 1];
rule146=[5 5 1 1 1 1];
rule147=[5 5 2 2 1 1];
rule148=[5 5 3 3 1 1];
rule149=[5 5 4 3 1 1];
rule150=[5 5 5 3 1 1];

rule151=[4 1 1 1 1 1]; % Slow responsiveness
rule152=[4 1 2 1 1 1];
rule153=[4 1 3 1 1 1];
rule154=[4 1 4 2 1 1];
rule155=[4 1 5 2 1 1];
rule156=[4 2 1 1 1 1];
rule157=[4 2 2 2 1 1];
rule158=[4 2 3 2 1 1];
rule159=[4 2 4 2 1 1];
rule160=[4 2 5 2 1 1];
rule161=[4 3 1 1 1 1];
rule162=[4 3 2 2 1 1];
rule163=[4 3 3 2 1 1];
rule164=[4 3 4 3 1 1];
rule165=[4 3 5 3 1 1];
rule166=[4 4 1 1 1 1];
rule167=[4 4 2 2 1 1];
rule168=[4 4 3 3 1 1];
rule169=[4 4 4 3 1 1];
rule170=[4 4 5 3 1 1];
rule171=[4 5 1 1 1 1];
rule172=[4 5 2 2 1 1];
rule173=[4 5 3 3 1 1];
rule174=[4 5 4 4 1 1];
rule175=[4 5 5 4 1 1];

rule176=[3 1 1 1 1 1]; % Medium responsiveness
rule177=[3 1 2 1 1 1];
rule178=[3 1 3 2 1 1];
rule179=[3 1 4 2 1 1];
rule180=[3 1 5 2 1 1];
rule181=[3 2 1 1 1 1];
rule182=[3 2 2 2 1 1];
rule183=[3 2 3 2 1 1];
rule184=[3 2 4 3 1 1];
rule185=[3 2 5 3 1 1];
rule186=[3 3 1 1 1 1];
rule187=[3 3 2 2 1 1];
rule188=[3 3 3 3 1 1];
rule189=[3 3 4 3 1 1];
rule190=[3 3 5 4 1 1];
rule191=[3 4 1 1 1 1];
rule192=[3 4 2 3 1 1];
rule193=[3 4 3 3 1 1];
rule194=[3 4 4 4 1 1];
rule195=[3 4 5 4 1 1];
rule196=[3 5 1 1 1 1];
rule197=[3 5 2 3 1 1];
rule198=[3 5 3 3 1 1];
rule199=[3 5 4 4 1 1];
rule200=[3 5 5 4 1 1];

rule201=[2 1 1 1 1 1]; % Fast responsiveness
rule202=[2 1 2 1 1 1];
rule203=[2 1 3 2 1 1];
rule204=[2 1 4 3 1 1];
rule205=[2 1 5 3 1 1];
rule206=[2 2 1 1 1 1];
rule207=[2 2 2 2 1 1];
rule208=[2 2 3 2 1 1];
rule209=[2 2 4 3 1 1];
rule210=[2 2 5 3 1 1];
rule211=[2 3 1 1 1 1];
rule212=[2 3 2 2 1 1];
rule213=[2 3 3 3 1 1];
rule214=[2 3 4 3 1 1];
rule215=[2 3 5 4 1 1];
rule216=[2 4 1 1 1 1];
rule217=[2 4 2 3 1 1];
rule218=[2 4 3 4 1 1];
rule219=[2 4 4 4 1 1];
rule220=[2 4 5 5 1 1];
rule221=[2 5 1 1 1 1];
rule222=[2 5 2 3 1 1];
rule223=[2 5 3 4 1 1];
rule224=[2 5 4 5 1 1];
rule225=[2 5 5 5 1 1];

rule226=[1 1 1 1 1 1]; % Very fast responsiveness
rule227=[1 1 2 1 1 1];
rule228=[1 1 3 2 1 1];
rule229=[1 1 4 3 1 1];
rule230=[1 1 5 3 1 1];
rule231=[1 2 1 1 1 1];
rule232=[1 2 2 2 1 1];
rule233=[1 2 3 2 1 1];
rule234=[1 2 4 3 1 1];
rule235=[1 2 5 3 1 1];
rule236=[1 3 1 1 1 1];
rule237=[1 3 2 2 1 1];
rule238=[1 3 3 3 1 1];
rule239=[1 3 4 4 1 1];
rule240=[1 3 5 4 1 1];
rule241=[1 4 1 1 1 1];
rule242=[1 4 2 3 1 1];
rule243=[1 4 3 4 1 1];
rule244=[1 4 4 5 1 1];
rule245=[1 4 5 5 1 1];
rule246=[1 5 1 1 1 1];
rule247=[1 5 2 3 1 1];
rule248=[1 5 3 4 1 1];
rule249=[1 5 4 5 1 1];
rule250=[1 5 5 5 1 1];

%rule list
ruleListB = [rule126; rule127; rule128; rule129; rule130;...
             rule131; rule132; rule133; rule134; rule135;...
             rule136; rule137; rule138; rule139; rule140;...
             rule141; rule142; rule143; rule144; rule145;...
             rule146; rule147; rule148; rule149; rule150;...
             rule151; rule152; rule153; rule154; rule155;...
             rule156; rule157; rule158; rule159; rule160;...
             rule161; rule162; rule163; rule164; rule165;...
             rule166; rule167; rule168; rule169; rule170;...
             rule171; rule172; rule173; rule174; rule175;...
             rule176; rule177; rule178; rule179; rule180;...
             rule181; rule182; rule183; rule184; rule185;...
             rule186; rule187; rule188; rule189; rule190;...
             rule191; rule192; rule193; rule194; rule195;...
             rule196; rule197; rule198; rule199; rule200;...
             rule201; rule202; rule203; rule204; rule205;...
             rule206; rule207; rule208; rule209; rule210;...
             rule211; rule212; rule213; rule214; rule215;...
             rule216; rule217; rule218; rule219; rule220;...
             rule221; rule222; rule223; rule224; rule225;...
             rule226; rule227; rule228; rule229; rule230;...
             rule231; rule232; rule233; rule234; rule235;...
             rule236; rule237; rule238; rule239; rule240;...
             rule241; rule242; rule243; rule244; rule245;...
             rule246; rule247; rule248; rule249; rule250];

% Adds the rules to the FIS
b = addrule(b,ruleListB);

% Print the rules to the workspace
rules = showrule(b)

%defuzzification methods
b.defuzzMethod = 'centroid';
%b.defuzzMethod = 'bisector';
%b.defuzzMethod = 'mom';
%b.defuzzMethod = 'som';
%b.defuzzMethod = 'lom';

for i=1:size(NPCObjectiveAdherenceData,1)
        evalNPCObjectiveAdherenceData = evalfis([NPCObjectiveAdherenceData(i, 5), NPCObjectiveAdherenceData(i, 6), NPCObjectiveAdherenceData(i, 7)], b);
        fprintf('%d) In(1): %.2f, In(2) %.2f, In(3) %.2f  => Out: %.2f \n\n', i, NPCObjectiveAdherenceData(i, 5), NPCObjectiveAdherenceData(i, 6), NPCObjectiveAdherenceData(i, 7), evalNPCObjectiveAdherenceData);  
        xlswrite('output.xls', evalNPCObjectiveAdherenceData, 1, sprintf('B%d',i+1));
end

%---------------------------------------------------------------------------------------------------------------------%
                                           %THIRD SYSTEM (weapon lethality)
%---------------------------------------------------------------------------------------------------------------------%

NPCWeaponLethalityData = xlsread(filename); % Read and store data file

c = newfis('NPC Weaponary Lethality'); % NPC weapon lethality inference system

c=addvar(c,'input','Weapon Damage Falloff (range effectiveness in metres)',[0 100]); % Weapon damage effectiveness at range

c=addmf(c,'input',1,'Very Short Range','trapmf',[-10 0 10 20]); % Very short effectiveness range
c=addmf(c,'input',1,'Short Range','trapmf',[10 15 25 30]); % Short effectiveness range
c=addmf(c,'input',1,'Medium Range','trapmf',[20 30 50 60]); % Medium effectiveness range
c=addmf(c,'input',1,'Long Range','trapmf',[50 55 75 80]); % Long effectiveness range
c=addmf(c,'input',1,'Very Long Range','trapmf',[70 80 100 110]); % Very long effectiveness range

c=addvar(c,'input','Weapon Fire Rate (rounds per minute)',[0 2000]); % Weapon fire rate

c=addmf(c,'input',2,'Very Slow Rate','trapmf',[-100 0 120 180]); % Very slow firing rate (< 3 RPS)
c=addmf(c,'input',2,'Slow Rate','trapmf',[120 180 360 420]); % Slow firing rate (2 - 7 RPS)
c=addmf(c,'input',2,'Medium Rate','trapmf',[360 420 660 720]); % Medium firing rate (6 - 12 RPS) 
c=addmf(c,'input',2,'Fast Rate','trapmf',[660 720 1200 1260]); % Fast firing rate (11 - 21 RPS)
c=addmf(c,'input',2,'Very Fast Rate','trapmf',[1200 1260 2000 2100]); % Very fast firing rate (> 20 RPS)

c=addvar(c,'input','Weapon Mobility (level %)',[0 100]); % Weapon manoeuvrability level

c=addmf(c,'input',3,'Very Slow Rate','trimf',[-10 0 20]); % Very slow movement
c=addmf(c,'input',3,'Slow Rate','trimf',[0 20 40]); % Slow movement
c=addmf(c,'input',3,'Medium Rate','trimf',[20 40 60]); % Medium movement
c=addmf(c,'input',3,'Fast Rate','trimf',[40 60 80]); % Fast movement
c=addmf(c,'input',3,'Very Fast Rate','trapmf',[60 80 100 110]); % Very fast movement

c=addvar(c,'output','NPC Weaponary Lethality (%)',[0 100]); % NPC weapon lethality level

c=addmf(c,'output',1,'Very Low Lethality','gaussmf',[7.5 0]); % Very ineffective for killing 
c=addmf(c,'output',1,'Low Lethality','gaussmf',[7.5 25]); % Ineffective for killing
c=addmf(c,'output',1,'Medium Lethality','gaussmf',[7.5 50]); % Useful for killing
c=addmf(c,'output',1,'High Lethality','gaussmf',[7.5 75]); % Effective for killing
c=addmf(c,'output',1,'Very High Lethality','gaussmf',[7.5 100]); % Very effective for killing

% Rules for the weapon lethality FIS
rule251=[1 1 1 1 1 1]; % Very short range
rule252=[1 1 2 1 1 1];
rule253=[1 1 3 1 1 1];
rule254=[1 1 4 2 1 1];
rule255=[1 1 5 2 1 1];
rule256=[1 2 1 1 1 1];
rule257=[1 2 2 1 1 1];
rule258=[1 2 3 2 1 1];
rule259=[1 2 4 2 1 1];
rule260=[1 2 5 2 1 1];
rule261=[1 3 1 1 1 1];
rule262=[1 3 2 1 1 1];
rule263=[1 3 3 2 1 1];
rule264=[1 3 4 2 1 1];
rule265=[1 3 5 2 1 1];
rule266=[1 4 1 1 1 1];
rule267=[1 4 2 2 1 1];
rule268=[1 4 3 2 1 1];
rule269=[1 4 4 2 1 1];
rule270=[1 4 5 2 1 1];
rule271=[1 5 1 1 1 1];
rule272=[1 5 2 2 1 1];
rule273=[1 5 3 2 1 1];
rule274=[1 5 4 2 1 1];
rule275=[1 5 5 3 1 1];

rule276=[2 1 1 1 1 1]; % Short range
rule277=[2 1 2 1 1 1];
rule278=[2 1 3 2 1 1];
rule279=[2 1 4 2 1 1];
rule280=[2 1 5 2 1 1];
rule281=[2 2 1 1 1 1];
rule282=[2 2 2 2 1 1];
rule283=[2 2 3 2 1 1];
rule284=[2 2 4 2 1 1];
rule285=[2 2 5 3 1 1];
rule286=[2 3 1 2 1 1];
rule287=[2 3 2 2 1 1];
rule288=[2 3 3 2 1 1];
rule289=[2 3 4 3 1 1];
rule290=[2 3 5 3 1 1];
rule291=[2 4 1 2 1 1];
rule292=[2 4 2 2 1 1];
rule293=[2 4 3 3 1 1];
rule294=[2 4 4 3 1 1];
rule295=[2 4 5 3 1 1];
rule296=[2 5 1 2 1 1];
rule297=[2 5 2 3 1 1];
rule298=[2 5 3 3 1 1];
rule299=[2 5 4 3 1 1];
rule300=[2 5 5 3 1 1];

rule301=[3 1 1 1 1 1]; % Medium range
rule302=[3 1 2 2 1 1];
rule303=[3 1 3 2 1 1];
rule304=[3 1 4 2 1 1];
rule305=[3 1 5 3 1 1];
rule306=[3 2 1 2 1 1];
rule307=[3 2 2 2 1 1];
rule308=[3 2 3 2 1 1];
rule309=[3 2 4 3 1 1];
rule310=[3 2 5 3 1 1];
rule311=[3 3 1 2 1 1];
rule312=[3 3 2 3 1 1];
rule313=[3 3 3 3 1 1];
rule314=[3 3 4 3 1 1];
rule315=[3 3 5 4 1 1];
rule316=[3 4 1 3 1 1];
rule317=[3 4 2 3 1 1];
rule318=[3 4 3 4 1 1];
rule319=[3 4 4 4 1 1];
rule320=[3 4 5 4 1 1];
rule321=[3 5 1 3 1 1];
rule322=[3 5 2 4 1 1];
rule323=[3 5 3 4 1 1];
rule324=[3 5 4 4 1 1];
rule325=[3 5 5 5 1 1];

rule326=[4 1 1 2 1 1]; % Long range
rule327=[4 1 2 2 1 1];
rule328=[4 1 3 3 1 1];
rule329=[4 1 4 3 1 1];
rule330=[4 1 5 3 1 1];
rule331=[4 2 1 2 1 1];
rule332=[4 2 2 3 1 1];
rule333=[4 2 3 3 1 1];
rule334=[4 2 4 4 1 1];
rule335=[4 2 5 4 1 1];
rule336=[4 3 1 3 1 1];
rule337=[4 3 2 3 1 1];
rule338=[4 3 3 4 1 1];
rule339=[4 3 4 4 1 1];
rule340=[4 3 5 4 1 1];
rule341=[4 4 1 3 1 1];
rule342=[4 4 2 4 1 1];
rule343=[4 4 3 4 1 1];
rule344=[4 4 4 4 1 1];
rule345=[4 4 5 5 1 1];
rule346=[4 5 1 4 1 1];
rule347=[4 5 2 4 1 1];
rule348=[4 5 3 4 1 1];
rule349=[4 5 4 5 1 1];
rule350=[4 5 5 5 1 1];

rule351=[5 1 1 3 1 1]; % Very long range
rule352=[5 1 2 3 1 1];
rule353=[5 1 3 3 1 1];
rule354=[5 1 4 3 1 1];
rule355=[5 1 5 3 1 1];
rule356=[5 2 1 3 1 1];
rule357=[5 2 2 3 1 1];
rule358=[5 2 3 4 1 1];
rule359=[5 2 4 4 1 1];
rule360=[5 2 5 4 1 1];
rule361=[5 3 1 4 1 1];
rule362=[5 3 2 4 1 1];
rule363=[5 3 3 4 1 1];
rule364=[5 3 4 5 1 1];
rule365=[5 3 5 5 1 1];
rule366=[5 4 1 4 1 1];
rule367=[5 4 2 4 1 1];
rule368=[5 4 3 5 1 1];
rule369=[5 4 4 5 1 1];
rule370=[5 4 5 5 1 1];
rule371=[5 5 1 4 1 1];
rule372=[5 5 2 5 1 1];
rule373=[5 5 3 5 1 1];
rule374=[5 5 4 5 1 1];
rule375=[5 5 5 5 1 1];

%rule list
ruleListC = [rule251; rule252; rule253; rule254; rule255;...
             rule256; rule257; rule258; rule259; rule260;...
             rule261; rule262; rule263; rule264; rule265;...
             rule266; rule267; rule268; rule269; rule270;...
             rule271; rule272; rule273; rule274; rule275;...
             rule276; rule277; rule278; rule279; rule280;...
             rule281; rule282; rule283; rule284; rule285;...
             rule286; rule287; rule288; rule289; rule290;...
             rule291; rule292; rule293; rule294; rule295;...
             rule296; rule297; rule298; rule299; rule300;...
             rule301; rule302; rule303; rule304; rule305;...
             rule306; rule307; rule308; rule309; rule310;...
             rule311; rule312; rule313; rule314; rule315;...
             rule316; rule317; rule318; rule319; rule320;...
             rule321; rule322; rule323; rule324; rule325;...
             rule326; rule327; rule328; rule329; rule330;...
             rule331; rule332; rule333; rule334; rule335;...
             rule336; rule337; rule338; rule339; rule340;...
             rule341; rule342; rule343; rule344; rule345;...
             rule346; rule347; rule348; rule349; rule350;...
             rule351; rule352; rule353; rule354; rule355;...
             rule356; rule357; rule358; rule359; rule360;...
             rule361; rule362; rule363; rule364; rule365;...
             rule366; rule367; rule368; rule369; rule370;...
             rule371; rule372; rule373; rule374; rule375];

% Add the rules to the FIS
c = addrule(c,ruleListC);

% Print the rules to the workspace
rules = showrule(c)

%defuzzification methods
c.defuzzMethod = 'centroid';
%c.defuzzMethod = 'bisector';
%c.defuzzMethod = 'mom';
%c.defuzzMethod = 'som';
%c.defuzzMethod = 'lom';

for i=1:size(NPCWeaponLethalityData, 1)
        evalNPCWeaponLethalityData = evalfis([NPCWeaponLethalityData(i, 9), NPCWeaponLethalityData(i, 10), NPCWeaponLethalityData(i, 11)], c);
        fprintf('%d) In(1): %.2f, In(2) %.2f, In(3) %.2f,  => Out: %.2f \n\n', i, NPCWeaponLethalityData(i, 9),NPCWeaponLethalityData(i, 10), NPCWeaponLethalityData(i, 11), evalNPCWeaponLethalityData);  
        xlswrite('output.xls', evalNPCWeaponLethalityData, 1, sprintf('C%d',i+1));
end

%---------------------------------------------------------------------------------------------------------------------%
                                            %FOURTH SYSTEM (NPC difficulty)
%---------------------------------------------------------------------------------------------------------------------%

filename = ('output.xls'); % Load output file
NPCDifficultyData = xlsread(filename); % Read and store output file

d = newfis('NPC Difficulty (%)'); % NPC difficulty inference system

d=addvar(d,'input','NPC Sensual Skill (skill level)',[1 5]); % NPC sensing ability

d=addmf(d,'input',1,'Very Low Skill','trimf',[0 1 2]); % Very low sensing ability
d=addmf(d,'input',1,'Low Skill','trimf',[1 2 3]); % Low sensing ability
d=addmf(d,'input',1,'Medium Skill','trimf',[2 3 4]); % Good sensing ability
d=addmf(d,'input',1,'High Skill','trimf',[3 4 5]); % High sensing ability
d=addmf(d,'input',1,'Very High Skill','trimf',[4 5 6]); % Very high sensing ability

d=addvar(d,'input','NPC Objective Potential (%)',[0 100]); % NPC objective ability

d=addmf(d,'input',2,'Very Low Potential','gaussmf', [7.5 0]); % Very low objective ability
d=addmf(d,'input',2,'Low Potential','gaussmf',[7.5 25]); % Low objective ability
d=addmf(d,'input',2,'Medium Potential','gaussmf',[7.5 50]); % Good objective ability
d=addmf(d,'input',2,'High Potential','gaussmf',[7.5 75]); % High objective aility
d=addmf(d,'input',2,'Very High Potential','gaussmf',[7.5 100]); % Very high objective ability

d=addvar(d,'input','NPC Weaponary Lethality (%)',[0 100]); % NPC weapon lethality level

d=addmf(d,'input',3,'Very Low Lethality','gaussmf',[7.5 0]); % Very ineffective for killing
d=addmf(d,'input',3,'Low Lethality','gaussmf',[7.5 25]); % Ineffective for killing
d=addmf(d,'input',3,'Medium Lethality','gaussmf',[7.5 50]); % Useful for killing
d=addmf(d,'input',3,'High Lethality','gaussmf',[7.5 75]); % Effective for killing
d=addmf(d,'input',3,'Very High Lethality','gaussmf',[7.5 100]); % Very effective for killing

d=addvar(d,'output','NPC Difficulty (%)',[0 100]); % NPC difficulty (output of outputs)

d=addmf(d,'output',1,'New','trapmf',[-10 0 5 15]); % New player
d=addmf(d,'output',1,'Novice','trimf',[10 25 40]); % Novice player
d=addmf(d,'output',1,'Regular','trimf',[35 50 65]); % Regular player
d=addmf(d,'output',1,'Hardened','trimf',[60 75 90]); % Hardened player
d=addmf(d,'output',1,'Veteran','trapmf',[85 95 100 110]); % Veteran player

% Rules for the difficulty FIS
rule376=[1 1 1 1 1 1]; % Very low skill
rule377=[1 1 2 1 1 1];
rule378=[1 1 3 1 1 1];
rule379=[1 1 4 1 1 1];
rule380=[1 1 5 1 1 1];
rule381=[1 2 1 1 1 1];
rule382=[1 2 2 1 1 1];
rule383=[1 2 3 1 1 1];
rule384=[1 2 4 1 1 1];
rule385=[1 2 5 1 1 1];
rule386=[1 3 1 1 1 1];
rule387=[1 3 2 1 1 1];
rule388=[1 3 3 1 1 1];
rule389=[1 3 4 1 1 1];
rule390=[1 3 5 1 1 1];
rule391=[1 4 1 1 1 1];
rule392=[1 4 2 1 1 1];
rule393=[1 4 3 1 1 1];
rule394=[1 4 4 1 1 1];
rule395=[1 4 5 1 1 1];
rule396=[1 5 1 1 1 1];
rule397=[1 5 2 1 1 1];
rule398=[1 5 3 1 1 1];
rule399=[1 5 4 1 1 1];
rule400=[1 5 5 2 1 1];

rule401=[2 1 1 1 1 1]; % Low skill
rule402=[2 1 2 2 1 1];
rule403=[2 1 3 2 1 1];
rule404=[2 1 4 2 1 1];
rule405=[2 1 5 2 1 1];
rule406=[2 2 1 1 1 1];
rule407=[2 2 2 2 1 1];
rule408=[2 2 3 2 1 1];
rule409=[2 2 4 2 1 1];
rule410=[2 2 5 2 1 1];
rule411=[2 3 1 1 1 1];
rule412=[2 3 2 2 1 1];
rule413=[2 3 3 2 1 1];
rule414=[2 3 4 2 1 1];
rule415=[2 3 5 2 1 1];
rule416=[2 4 1 1 1 1];
rule417=[2 4 2 2 1 1];
rule418=[2 4 3 3 1 1];
rule419=[2 4 4 3 1 1];
rule420=[2 4 5 3 1 1];
rule421=[2 5 1 1 1 1];
rule422=[2 5 2 2 1 1];
rule423=[2 5 3 3 1 1];
rule424=[2 5 4 3 1 1];
rule425=[2 5 5 3 1 1];

rule426=[3 1 1 1 1 1]; % Medium skill
rule427=[3 1 2 2 1 1];
rule428=[3 1 3 2 1 1];
rule429=[3 1 4 2 1 1];
rule430=[3 1 5 2 1 1];
rule431=[3 2 1 1 1 1];
rule432=[3 2 2 2 1 1];
rule433=[3 2 3 2 1 1];
rule434=[3 2 4 3 1 1];
rule435=[3 2 5 3 1 1];
rule436=[3 3 1 1 1 1];
rule437=[3 3 2 2 1 1];
rule438=[3 3 3 3 1 1];
rule439=[3 3 4 3 1 1];
rule440=[3 3 5 3 1 1];
rule441=[3 4 1 1 1 1];
rule442=[3 4 2 2 1 1];
rule443=[3 4 3 3 1 1];
rule444=[3 4 4 4 1 1];
rule445=[3 4 5 4 1 1];
rule446=[3 5 1 1 1 1];
rule447=[3 5 2 2 1 1];
rule448=[3 5 3 3 1 1];
rule449=[3 5 4 4 1 1];
rule450=[3 5 5 4 1 1];

rule451=[4 1 1 1 1 1]; % High skill
rule452=[4 1 2 2 1 1];
rule453=[4 1 3 3 1 1];
rule454=[4 1 4 3 1 1];
rule455=[4 1 5 4 1 1];
rule456=[4 2 1 1 1 1];
rule457=[4 2 2 2 1 1];
rule458=[4 2 3 3 1 1];
rule459=[4 2 4 4 1 1];
rule460=[4 2 5 4 1 1];
rule461=[4 3 1 1 1 1];
rule462=[4 3 2 2 1 1];
rule463=[4 3 3 3 1 1];
rule464=[4 3 4 4 1 1];
rule465=[4 3 5 4 1 1];
rule466=[4 4 1 2 1 1];
rule467=[4 4 2 3 1 1];
rule468=[4 4 3 4 1 1];
rule469=[4 4 4 4 1 1];
rule470=[4 4 5 5 1 1];
rule471=[4 5 1 2 1 1];
rule472=[4 5 2 3 1 1];
rule473=[4 5 3 4 1 1];
rule474=[4 5 4 4 1 1];
rule475=[4 5 5 5 1 1];

rule476=[5 1 1 1 1 1]; % Very high skill
rule477=[5 1 2 3 1 1];
rule478=[5 1 3 3 1 1];
rule479=[5 1 4 4 1 1];
rule480=[5 1 5 4 1 1];
rule481=[5 2 1 1 1 1];
rule482=[5 2 2 3 1 1];
rule483=[5 2 3 4 1 1];
rule484=[5 2 4 4 1 1];
rule485=[5 2 5 5 1 1];
rule486=[5 3 1 1 1 1];
rule487=[5 3 2 3 1 1];
rule488=[5 3 3 4 1 1];
rule489=[5 3 4 4 1 1];
rule490=[5 3 5 5 1 1];
rule491=[5 4 1 2 1 1];
rule492=[5 4 2 3 1 1];
rule493=[5 4 3 4 1 1];
rule494=[5 4 4 5 1 1];
rule495=[5 4 5 5 1 1];
rule496=[5 5 1 2 1 1];
rule497=[5 5 2 3 1 1];
rule498=[5 5 3 4 1 1];
rule499=[5 5 4 5 1 1];
rule500=[5 5 5 5 1 1];

%rule list
ruleListD = [rule376; rule377; rule378; rule379; rule380;...
             rule381; rule382; rule383; rule384; rule385;...
             rule386; rule387; rule388; rule389; rule390;...
             rule391; rule392; rule393; rule394; rule395;...
             rule396; rule397; rule398; rule399; rule400;...
             rule401; rule402; rule403; rule404; rule405;...
             rule406; rule407; rule408; rule409; rule410;...
             rule411; rule412; rule413; rule414; rule415;...
             rule416; rule417; rule418; rule419; rule420;...
             rule421; rule422; rule423; rule424; rule425;...
             rule426; rule427; rule428; rule429; rule430;...
             rule431; rule432; rule433; rule434; rule435;...
             rule436; rule437; rule438; rule439; rule440;...
             rule441; rule442; rule443; rule444; rule445;...
             rule446; rule447; rule448; rule449; rule450;...
             rule451; rule452; rule453; rule454; rule455;...
             rule456; rule457; rule458; rule459; rule460;...
             rule461; rule462; rule463; rule464; rule465;...
             rule466; rule467; rule468; rule469; rule470;...
             rule471; rule472; rule473; rule474; rule475;...
             rule476; rule477; rule478; rule479; rule480;...
             rule481; rule482; rule483; rule484; rule485;...
             rule486; rule487; rule488; rule489; rule490;...
             rule491; rule492; rule493; rule494; rule495;...
             rule496; rule497; rule498; rule499; rule500];

% Add the rules to the FIS
d = addrule(d,ruleListD);

% Print the rules to the workspace
rules = showrule(d)

%defuzzification methods
d.defuzzMethod = 'centroid';
%d.defuzzMethod = 'bisector';
%d.defuzzMethod = 'mom';
%d.defuzzMethod = 'som';
%d.defuzzMethod = 'lom';

for i=1:size(NPCDifficultyData, 1)
        evalNPCDifficultyData = evalfis([NPCDifficultyData(i, 1), NPCDifficultyData(i, 2), NPCDifficultyData(i, 3)], d);
        fprintf('%d) In(1): %.2f, In(2) %.2f, In(3) %.2f,  => Out: %.2f \n\n', i, NPCDifficultyData(i, 1),NPCDifficultyData(i, 2), NPCDifficultyData(i, 3), evalNPCDifficultyData);  
        xlswrite('output.xls', evalNPCDifficultyData, 1, sprintf('E%d',i+1));
end

%---------------------------------------------------------------------------------------------------------------------%
                                                      %Rule view and plots
%---------------------------------------------------------------------------------------------------------------------%

ruleview(a); % Show rule view for inference system a
ruleview(b); % Show rule view for inference system b
ruleview(c); % Show rule view for inference system c
ruleview(d); % Show rule view for inference system d

figure(1) % First inference system (NPC sensing ability)
subplot(4,1,1), plotmf(a, 'input', 1)
subplot(4,1,2), plotmf(a, 'input', 2)
subplot(4,1,3), plotmf(a, 'input', 3)
subplot(4,1,4), plotmf(a, 'output', 1)

figure(2) % Second inference system (NPC objective ability)
subplot(4,1,1), plotmf(b, 'input', 1)
subplot(4,1,2), plotmf(b, 'input', 2)
subplot(4,1,3), plotmf(b, 'input', 3)
subplot(4,1,4), plotmf(b, 'output', 1)

figure(3) % Third inference system (NPC weapon lethality level)
subplot(4,1,1), plotmf(c, 'input', 1)
subplot(4,1,2), plotmf(c, 'input', 2)
subplot(4,1,3), plotmf(c, 'input', 3)
subplot(4,1,4), plotmf(c, 'output', 1)

figure(4) % Fourth inference system (NPC difficulty level)
subplot(4,1,1), plotmf(d, 'input', 1)
subplot(4,1,2), plotmf(d, 'input', 2)
subplot(4,1,3), plotmf(d, 'input', 3)
subplot(4,1,4), plotmf(d, 'output', 1)