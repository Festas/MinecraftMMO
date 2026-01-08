#version 150

#moj_import <fog.glsl>
#moj_import <light.glsl>

in vec3 Position;
in vec4 Color;
in vec2 UV0;
in ivec2 UV2;

uniform sampler2D Sampler0;

uniform mat4 ModelViewMat;
uniform mat4 ProjMat;
uniform mat3 IViewRotMat;
uniform int FogShape;
uniform vec2 ScreenSize;

out float vertexDistance;
out vec4 vertexColor;
out vec2 texCoord0;

#define MH_VERSION 5
#define MH_OFFSET 67
#define XP_HIDE true
#define XP_OFFSET vec3(-10600.0, -10600.0, -10600.0)
#define XP_COLOR vec3(0.501, 1.0, 0.125)
#define XP_COLOR_SHADOW vec3(0.0, 0.0, 0.0)

// Function to convert a vertical ascent into a ID.
float get_id(float offset) {
    if (offset <= 0.0)
        return 0.0;
    return trunc(offset / 1000.0);
}

bool is_at(int offset, int vertex, int pos) { return (((vertex == 1 || vertex == 2) && offset == pos) || ((vertex == 0 || vertex == 3) && offset == (pos + 8))); }
bool is_at(int offset, int vertex, int pos0, int pos1) { return is_at(offset, vertex, pos0) || is_at(offset, vertex, pos1); }
bool is_at(int offset, int vertex, int pos0, int pos1, int pos2, int pos3) { return is_at(offset, vertex, pos0, pos1) || is_at(offset, vertex, pos2, pos3); }
bool within(vec3 a, vec3 b, float threshold) { return abs(length(a - b)) < threshold; }

void main() {
    vec3 pos = Position;

    vertexDistance = fog_distance(IViewRotMat * Position, FogShape);
    vertexColor = Color;
    texCoord0 = UV0;

    vec2 pixel = vec2(ProjMat[0][0], ProjMat[1][1]) / 2.0;
    int guiScale = int(round(pixel.x / (1 / ScreenSize.x)));
    vec2 guiSize = ScreenSize / guiScale;

    float id = get_id((round(MH_OFFSET - Position.y)) * -1);

    // Detect if GUI text.
    if (id > 99 && Color.a != 0.0) {
        float yOffset = 0.0;
        float xOffset = 0.0;
        float layer = 0.0;
        vec2 scale = vec2(1, 1);
        bool outlined = false;

        if (id >= 100.0 && id <= 131.0) {
            switch (int(id)) {
                case 100:
                    scale.x = 0.25;
                    scale.y = 0.25;
                    xOffset = int(guiSize.x * (-50.0/100))-49;
                    yOffset = int(guiSize.y * (0.0/100))+73;
                    layer = -6.000000000000001E-4;
                    break;
                case 101:
                    scale.x = 0.25;
                    scale.y = 0.25;
                    xOffset = int(guiSize.x * (-50.0/100))-50;
                    yOffset = int(guiSize.y * (0.0/100))+72;
                    layer = -5.0E-4;
                    break;
                case 102:
                    xOffset = int(guiSize.x * (-50.0/100))-76;
                    yOffset = int(guiSize.y * (0.0/100))+13;
                    layer = 10.0;
                    break;
                case 103:
                    xOffset = int(guiSize.x * (-50.0/100))-76;
                    yOffset = int(guiSize.y * (0.0/100))+17;
                    layer = 10.0;
                    break;
                case 104:
                    xOffset = int(guiSize.x * (-50.0/100))-76;
                    yOffset = int(guiSize.y * (0.0/100))+21;
                    layer = 10.0;
                    break;
                case 105:
                    xOffset = int(guiSize.x * (-50.0/100))-76;
                    yOffset = int(guiSize.y * (0.0/100))+25;
                    layer = 10.0;
                    break;
                case 106:
                    xOffset = int(guiSize.x * (-50.0/100))-76;
                    yOffset = int(guiSize.y * (0.0/100))+29;
                    layer = 10.0;
                    break;
                case 107:
                    xOffset = int(guiSize.x * (-50.0/100))-76;
                    yOffset = int(guiSize.y * (0.0/100))+33;
                    layer = 10.0;
                    break;
                case 108:
                    xOffset = int(guiSize.x * (-50.0/100))-76;
                    yOffset = int(guiSize.y * (0.0/100))+37;
                    layer = 10.0;
                    break;
                case 109:
                    xOffset = int(guiSize.x * (-50.0/100))-76;
                    yOffset = int(guiSize.y * (0.0/100))+41;
                    layer = 10.0;
                    break;
                case 110:
                    xOffset = int(guiSize.x * (-50.0/100))-76;
                    yOffset = int(guiSize.y * (0.0/100))+45;
                    layer = 10.0;
                    break;
                case 111:
                    xOffset = int(guiSize.x * (-50.0/100))-76;
                    yOffset = int(guiSize.y * (0.0/100))+49;
                    layer = 10.0;
                    break;
                case 112:
                    xOffset = int(guiSize.x * (-50.0/100))-76;
                    yOffset = int(guiSize.y * (0.0/100))+53;
                    layer = 10.0;
                    break;
                case 113:
                    xOffset = int(guiSize.x * (-50.0/100))-76;
                    yOffset = int(guiSize.y * (0.0/100))+57;
                    layer = 10.0;
                    break;
                case 114:
                    xOffset = int(guiSize.x * (-50.0/100))-76;
                    yOffset = int(guiSize.y * (0.0/100))+61;
                    layer = 10.0;
                    break;
                case 115:
                    xOffset = int(guiSize.x * (-50.0/100))-76;
                    yOffset = int(guiSize.y * (0.0/100))+65;
                    layer = 10.0;
                    break;
                case 116:
                    xOffset = int(guiSize.x * (-50.0/100))-76;
                    yOffset = int(guiSize.y * (0.0/100))+69;
                    layer = 10.0;
                    break;
                case 117:
                    xOffset = int(guiSize.x * (-50.0/100))-76;
                    yOffset = int(guiSize.y * (0.0/100))+73;
                    layer = 10.0;
                    break;
                case 118:
                    scale.x = 0.25;
                    scale.y = 0.25;
                    xOffset = int(guiSize.x * (-50.0/100))-50;
                    yOffset = int(guiSize.y * (0.0/100))+72;
                    layer = -3.0000000000000003E-4;
                    break;
                case 119:
                    xOffset = int(guiSize.x * (-50.0/100))-84;
                    yOffset = int(guiSize.y * (0.0/100))+68;
                    layer = 10.0;
                    break;
                case 120:
                    xOffset = int(guiSize.x * (-50.0/100))-84;
                    yOffset = int(guiSize.y * (0.0/100))+71;
                    layer = 10.0;
                    break;
                case 121:
                    scale.x = 0.66;
                    scale.y = 0.66;
                    xOffset = int(guiSize.x * (-50.0/100))-72;
                    yOffset = int(guiSize.y * (0.0/100))+58;
                    layer = 10.0;
                    outlined = true;
                    break;
                case 122:
                    scale.x = 0.66;
                    scale.y = 0.66;
                    xOffset = int(guiSize.x * (-50.0/100))-72;
                    yOffset = int(guiSize.y * (0.0/100))+60;
                    layer = 10.0;
                    outlined = true;
                    break;
                case 123:
                    scale.x = 0.25;
                    scale.y = 0.25;
                    xOffset = int(guiSize.x * (-50.0/100))-29;
                    yOffset = int(guiSize.y * (0.0/100))+73;
                    layer = -6.000000000000001E-4;
                    break;
                case 124:
                    scale.x = 0.25;
                    scale.y = 0.25;
                    xOffset = int(guiSize.x * (-50.0/100))-30;
                    yOffset = int(guiSize.y * (0.0/100))+72;
                    layer = -5.0E-4;
                    break;
                case 125:
                    xOffset = int(guiSize.x * (-50.0/100))-56;
                    yOffset = int(guiSize.y * (0.0/100))+13;
                    layer = 10.0;
                    break;
                case 126:
                    xOffset = int(guiSize.x * (-50.0/100))-56;
                    yOffset = int(guiSize.y * (0.0/100))+17;
                    layer = 10.0;
                    break;
                case 127:
                    xOffset = int(guiSize.x * (-50.0/100))-56;
                    yOffset = int(guiSize.y * (0.0/100))+21;
                    layer = 10.0;
                    break;
                case 128:
                    xOffset = int(guiSize.x * (-50.0/100))-56;
                    yOffset = int(guiSize.y * (0.0/100))+25;
                    layer = 10.0;
                    break;
                case 129:
                    xOffset = int(guiSize.x * (-50.0/100))-56;
                    yOffset = int(guiSize.y * (0.0/100))+29;
                    layer = 10.0;
                    break;
                case 130:
                    xOffset = int(guiSize.x * (-50.0/100))-56;
                    yOffset = int(guiSize.y * (0.0/100))+33;
                    layer = 10.0;
                    break;
                case 131:
                    xOffset = int(guiSize.x * (-50.0/100))-56;
                    yOffset = int(guiSize.y * (0.0/100))+37;
                    layer = 10.0;
                    break;
            }
        }
        else if (id >= 132.0 && id <= 163.0) {
            switch (int(id)) {
                case 132:
                    xOffset = int(guiSize.x * (-50.0/100))-56;
                    yOffset = int(guiSize.y * (0.0/100))+41;
                    layer = 10.0;
                    break;
                case 133:
                    xOffset = int(guiSize.x * (-50.0/100))-56;
                    yOffset = int(guiSize.y * (0.0/100))+45;
                    layer = 10.0;
                    break;
                case 134:
                    xOffset = int(guiSize.x * (-50.0/100))-56;
                    yOffset = int(guiSize.y * (0.0/100))+49;
                    layer = 10.0;
                    break;
                case 135:
                    xOffset = int(guiSize.x * (-50.0/100))-56;
                    yOffset = int(guiSize.y * (0.0/100))+53;
                    layer = 10.0;
                    break;
                case 136:
                    xOffset = int(guiSize.x * (-50.0/100))-56;
                    yOffset = int(guiSize.y * (0.0/100))+57;
                    layer = 10.0;
                    break;
                case 137:
                    xOffset = int(guiSize.x * (-50.0/100))-56;
                    yOffset = int(guiSize.y * (0.0/100))+61;
                    layer = 10.0;
                    break;
                case 138:
                    xOffset = int(guiSize.x * (-50.0/100))-56;
                    yOffset = int(guiSize.y * (0.0/100))+65;
                    layer = 10.0;
                    break;
                case 139:
                    xOffset = int(guiSize.x * (-50.0/100))-56;
                    yOffset = int(guiSize.y * (0.0/100))+69;
                    layer = 10.0;
                    break;
                case 140:
                    xOffset = int(guiSize.x * (-50.0/100))-56;
                    yOffset = int(guiSize.y * (0.0/100))+73;
                    layer = 10.0;
                    break;
                case 141:
                    scale.x = 0.25;
                    scale.y = 0.25;
                    xOffset = int(guiSize.x * (-50.0/100))-30;
                    yOffset = int(guiSize.y * (0.0/100))+72;
                    layer = -3.0000000000000003E-4;
                    break;
                case 142:
                    xOffset = int(guiSize.x * (-50.0/100))-64;
                    yOffset = int(guiSize.y * (0.0/100))+68;
                    layer = 10.0;
                    break;
                case 143:
                    xOffset = int(guiSize.x * (-50.0/100))-64;
                    yOffset = int(guiSize.y * (0.0/100))+71;
                    layer = 10.0;
                    break;
                case 144:
                    scale.x = 0.66;
                    scale.y = 0.66;
                    xOffset = int(guiSize.x * (-50.0/100))-52;
                    yOffset = int(guiSize.y * (0.0/100))+58;
                    layer = 10.0;
                    outlined = true;
                    break;
                case 145:
                    scale.x = 0.66;
                    scale.y = 0.66;
                    xOffset = int(guiSize.x * (-50.0/100))-52;
                    yOffset = int(guiSize.y * (0.0/100))+60;
                    layer = 10.0;
                    outlined = true;
                    break;
                case 146:
                    scale.x = 0.25;
                    scale.y = 0.25;
                    xOffset = int(guiSize.x * (-50.0/100))-9;
                    yOffset = int(guiSize.y * (0.0/100))+73;
                    layer = -6.000000000000001E-4;
                    break;
                case 147:
                    scale.x = 0.25;
                    scale.y = 0.25;
                    xOffset = int(guiSize.x * (-50.0/100))-10;
                    yOffset = int(guiSize.y * (0.0/100))+72;
                    layer = -5.0E-4;
                    break;
                case 148:
                    xOffset = int(guiSize.x * (-50.0/100))-36;
                    yOffset = int(guiSize.y * (0.0/100))+13;
                    layer = 10.0;
                    break;
                case 149:
                    xOffset = int(guiSize.x * (-50.0/100))-36;
                    yOffset = int(guiSize.y * (0.0/100))+17;
                    layer = 10.0;
                    break;
                case 150:
                    xOffset = int(guiSize.x * (-50.0/100))-36;
                    yOffset = int(guiSize.y * (0.0/100))+21;
                    layer = 10.0;
                    break;
                case 151:
                    xOffset = int(guiSize.x * (-50.0/100))-36;
                    yOffset = int(guiSize.y * (0.0/100))+25;
                    layer = 10.0;
                    break;
                case 152:
                    xOffset = int(guiSize.x * (-50.0/100))-36;
                    yOffset = int(guiSize.y * (0.0/100))+29;
                    layer = 10.0;
                    break;
                case 153:
                    xOffset = int(guiSize.x * (-50.0/100))-36;
                    yOffset = int(guiSize.y * (0.0/100))+33;
                    layer = 10.0;
                    break;
                case 154:
                    xOffset = int(guiSize.x * (-50.0/100))-36;
                    yOffset = int(guiSize.y * (0.0/100))+37;
                    layer = 10.0;
                    break;
                case 155:
                    xOffset = int(guiSize.x * (-50.0/100))-36;
                    yOffset = int(guiSize.y * (0.0/100))+41;
                    layer = 10.0;
                    break;
                case 156:
                    xOffset = int(guiSize.x * (-50.0/100))-36;
                    yOffset = int(guiSize.y * (0.0/100))+45;
                    layer = 10.0;
                    break;
                case 157:
                    xOffset = int(guiSize.x * (-50.0/100))-36;
                    yOffset = int(guiSize.y * (0.0/100))+49;
                    layer = 10.0;
                    break;
                case 158:
                    xOffset = int(guiSize.x * (-50.0/100))-36;
                    yOffset = int(guiSize.y * (0.0/100))+53;
                    layer = 10.0;
                    break;
                case 159:
                    xOffset = int(guiSize.x * (-50.0/100))-36;
                    yOffset = int(guiSize.y * (0.0/100))+57;
                    layer = 10.0;
                    break;
                case 160:
                    xOffset = int(guiSize.x * (-50.0/100))-36;
                    yOffset = int(guiSize.y * (0.0/100))+61;
                    layer = 10.0;
                    break;
                case 161:
                    xOffset = int(guiSize.x * (-50.0/100))-36;
                    yOffset = int(guiSize.y * (0.0/100))+65;
                    layer = 10.0;
                    break;
                case 162:
                    xOffset = int(guiSize.x * (-50.0/100))-36;
                    yOffset = int(guiSize.y * (0.0/100))+69;
                    layer = 10.0;
                    break;
                case 163:
                    xOffset = int(guiSize.x * (-50.0/100))-36;
                    yOffset = int(guiSize.y * (0.0/100))+73;
                    layer = 10.0;
                    break;
            }
        }
        else if (id >= 164.0 && id <= 195.0) {
            switch (int(id)) {
                case 164:
                    scale.x = 0.25;
                    scale.y = 0.25;
                    xOffset = int(guiSize.x * (-50.0/100))-10;
                    yOffset = int(guiSize.y * (0.0/100))+72;
                    layer = -3.0000000000000003E-4;
                    break;
                case 165:
                    xOffset = int(guiSize.x * (-50.0/100))-44;
                    yOffset = int(guiSize.y * (0.0/100))+68;
                    layer = 10.0;
                    break;
                case 166:
                    xOffset = int(guiSize.x * (-50.0/100))-44;
                    yOffset = int(guiSize.y * (0.0/100))+71;
                    layer = 10.0;
                    break;
                case 167:
                    scale.x = 0.66;
                    scale.y = 0.66;
                    xOffset = int(guiSize.x * (-50.0/100))-32;
                    yOffset = int(guiSize.y * (0.0/100))+58;
                    layer = 10.0;
                    outlined = true;
                    break;
                case 168:
                    scale.x = 0.66;
                    scale.y = 0.66;
                    xOffset = int(guiSize.x * (-50.0/100))-32;
                    yOffset = int(guiSize.y * (0.0/100))+60;
                    layer = 10.0;
                    outlined = true;
                    break;
                case 169:
                    scale.x = 0.25;
                    scale.y = 0.25;
                    xOffset = int(guiSize.x * (-50.0/100))+11;
                    yOffset = int(guiSize.y * (0.0/100))+73;
                    layer = -6.000000000000001E-4;
                    break;
                case 170:
                    scale.x = 0.25;
                    scale.y = 0.25;
                    xOffset = int(guiSize.x * (-50.0/100))+10;
                    yOffset = int(guiSize.y * (0.0/100))+72;
                    layer = -5.0E-4;
                    break;
                case 171:
                    xOffset = int(guiSize.x * (-50.0/100))-16;
                    yOffset = int(guiSize.y * (0.0/100))+13;
                    layer = 10.0;
                    break;
                case 172:
                    xOffset = int(guiSize.x * (-50.0/100))-16;
                    yOffset = int(guiSize.y * (0.0/100))+17;
                    layer = 10.0;
                    break;
                case 173:
                    xOffset = int(guiSize.x * (-50.0/100))-16;
                    yOffset = int(guiSize.y * (0.0/100))+21;
                    layer = 10.0;
                    break;
                case 174:
                    xOffset = int(guiSize.x * (-50.0/100))-16;
                    yOffset = int(guiSize.y * (0.0/100))+25;
                    layer = 10.0;
                    break;
                case 175:
                    xOffset = int(guiSize.x * (-50.0/100))-16;
                    yOffset = int(guiSize.y * (0.0/100))+29;
                    layer = 10.0;
                    break;
                case 176:
                    xOffset = int(guiSize.x * (-50.0/100))-16;
                    yOffset = int(guiSize.y * (0.0/100))+33;
                    layer = 10.0;
                    break;
                case 177:
                    xOffset = int(guiSize.x * (-50.0/100))-16;
                    yOffset = int(guiSize.y * (0.0/100))+37;
                    layer = 10.0;
                    break;
                case 178:
                    xOffset = int(guiSize.x * (-50.0/100))-16;
                    yOffset = int(guiSize.y * (0.0/100))+41;
                    layer = 10.0;
                    break;
                case 179:
                    xOffset = int(guiSize.x * (-50.0/100))-16;
                    yOffset = int(guiSize.y * (0.0/100))+45;
                    layer = 10.0;
                    break;
                case 180:
                    xOffset = int(guiSize.x * (-50.0/100))-16;
                    yOffset = int(guiSize.y * (0.0/100))+49;
                    layer = 10.0;
                    break;
                case 181:
                    xOffset = int(guiSize.x * (-50.0/100))-16;
                    yOffset = int(guiSize.y * (0.0/100))+53;
                    layer = 10.0;
                    break;
                case 182:
                    xOffset = int(guiSize.x * (-50.0/100))-16;
                    yOffset = int(guiSize.y * (0.0/100))+57;
                    layer = 10.0;
                    break;
                case 183:
                    xOffset = int(guiSize.x * (-50.0/100))-16;
                    yOffset = int(guiSize.y * (0.0/100))+61;
                    layer = 10.0;
                    break;
                case 184:
                    xOffset = int(guiSize.x * (-50.0/100))-16;
                    yOffset = int(guiSize.y * (0.0/100))+65;
                    layer = 10.0;
                    break;
                case 185:
                    xOffset = int(guiSize.x * (-50.0/100))-16;
                    yOffset = int(guiSize.y * (0.0/100))+69;
                    layer = 10.0;
                    break;
                case 186:
                    xOffset = int(guiSize.x * (-50.0/100))-16;
                    yOffset = int(guiSize.y * (0.0/100))+73;
                    layer = 10.0;
                    break;
                case 187:
                    scale.x = 0.25;
                    scale.y = 0.25;
                    xOffset = int(guiSize.x * (-50.0/100))+10;
                    yOffset = int(guiSize.y * (0.0/100))+72;
                    layer = -3.0000000000000003E-4;
                    break;
                case 188:
                    xOffset = int(guiSize.x * (-50.0/100))-24;
                    yOffset = int(guiSize.y * (0.0/100))+68;
                    layer = 10.0;
                    break;
                case 189:
                    xOffset = int(guiSize.x * (-50.0/100))-24;
                    yOffset = int(guiSize.y * (0.0/100))+71;
                    layer = 10.0;
                    break;
                case 190:
                    scale.x = 0.66;
                    scale.y = 0.66;
                    xOffset = int(guiSize.x * (-50.0/100))-12;
                    yOffset = int(guiSize.y * (0.0/100))+58;
                    layer = 10.0;
                    outlined = true;
                    break;
                case 191:
                    scale.x = 0.66;
                    scale.y = 0.66;
                    xOffset = int(guiSize.x * (-50.0/100))-12;
                    yOffset = int(guiSize.y * (0.0/100))+60;
                    layer = 10.0;
                    outlined = true;
                    break;
                case 192:
                    scale.x = 0.25;
                    scale.y = 0.25;
                    xOffset = int(guiSize.x * (-50.0/100))+31;
                    yOffset = int(guiSize.y * (0.0/100))+73;
                    layer = -6.000000000000001E-4;
                    break;
                case 193:
                    scale.x = 0.25;
                    scale.y = 0.25;
                    xOffset = int(guiSize.x * (-50.0/100))+30;
                    yOffset = int(guiSize.y * (0.0/100))+72;
                    layer = -5.0E-4;
                    break;
                case 194:
                    xOffset = int(guiSize.x * (-50.0/100))+4;
                    yOffset = int(guiSize.y * (0.0/100))+13;
                    layer = 10.0;
                    break;
                case 195:
                    xOffset = int(guiSize.x * (-50.0/100))+4;
                    yOffset = int(guiSize.y * (0.0/100))+17;
                    layer = 10.0;
                    break;
            }
        }
        else if (id >= 196.0 && id <= 227.0) {
            switch (int(id)) {
                case 196:
                    xOffset = int(guiSize.x * (-50.0/100))+4;
                    yOffset = int(guiSize.y * (0.0/100))+21;
                    layer = 10.0;
                    break;
                case 197:
                    xOffset = int(guiSize.x * (-50.0/100))+4;
                    yOffset = int(guiSize.y * (0.0/100))+25;
                    layer = 10.0;
                    break;
                case 198:
                    xOffset = int(guiSize.x * (-50.0/100))+4;
                    yOffset = int(guiSize.y * (0.0/100))+29;
                    layer = 10.0;
                    break;
                case 199:
                    xOffset = int(guiSize.x * (-50.0/100))+4;
                    yOffset = int(guiSize.y * (0.0/100))+33;
                    layer = 10.0;
                    break;
                case 200:
                    xOffset = int(guiSize.x * (-50.0/100))+4;
                    yOffset = int(guiSize.y * (0.0/100))+37;
                    layer = 10.0;
                    break;
                case 201:
                    xOffset = int(guiSize.x * (-50.0/100))+4;
                    yOffset = int(guiSize.y * (0.0/100))+41;
                    layer = 10.0;
                    break;
                case 202:
                    xOffset = int(guiSize.x * (-50.0/100))+4;
                    yOffset = int(guiSize.y * (0.0/100))+45;
                    layer = 10.0;
                    break;
                case 203:
                    xOffset = int(guiSize.x * (-50.0/100))+4;
                    yOffset = int(guiSize.y * (0.0/100))+49;
                    layer = 10.0;
                    break;
                case 204:
                    xOffset = int(guiSize.x * (-50.0/100))+4;
                    yOffset = int(guiSize.y * (0.0/100))+53;
                    layer = 10.0;
                    break;
                case 205:
                    xOffset = int(guiSize.x * (-50.0/100))+4;
                    yOffset = int(guiSize.y * (0.0/100))+57;
                    layer = 10.0;
                    break;
                case 206:
                    xOffset = int(guiSize.x * (-50.0/100))+4;
                    yOffset = int(guiSize.y * (0.0/100))+61;
                    layer = 10.0;
                    break;
                case 207:
                    xOffset = int(guiSize.x * (-50.0/100))+4;
                    yOffset = int(guiSize.y * (0.0/100))+65;
                    layer = 10.0;
                    break;
                case 208:
                    xOffset = int(guiSize.x * (-50.0/100))+4;
                    yOffset = int(guiSize.y * (0.0/100))+69;
                    layer = 10.0;
                    break;
                case 209:
                    xOffset = int(guiSize.x * (-50.0/100))+4;
                    yOffset = int(guiSize.y * (0.0/100))+73;
                    layer = 10.0;
                    break;
                case 210:
                    scale.x = 0.25;
                    scale.y = 0.25;
                    xOffset = int(guiSize.x * (-50.0/100))+30;
                    yOffset = int(guiSize.y * (0.0/100))+72;
                    layer = -3.0000000000000003E-4;
                    break;
                case 211:
                    xOffset = int(guiSize.x * (-50.0/100))-4;
                    yOffset = int(guiSize.y * (0.0/100))+68;
                    layer = 10.0;
                    break;
                case 212:
                    xOffset = int(guiSize.x * (-50.0/100))-4;
                    yOffset = int(guiSize.y * (0.0/100))+71;
                    layer = 10.0;
                    break;
                case 213:
                    scale.x = 0.66;
                    scale.y = 0.66;
                    xOffset = int(guiSize.x * (-50.0/100))+8;
                    yOffset = int(guiSize.y * (0.0/100))+58;
                    layer = 10.0;
                    outlined = true;
                    break;
                case 214:
                    scale.x = 0.66;
                    scale.y = 0.66;
                    xOffset = int(guiSize.x * (-50.0/100))+8;
                    yOffset = int(guiSize.y * (0.0/100))+60;
                    layer = 10.0;
                    outlined = true;
                    break;
                case 215:
                    scale.x = 0.25;
                    scale.y = 0.25;
                    xOffset = int(guiSize.x * (-50.0/100))+51;
                    yOffset = int(guiSize.y * (0.0/100))+73;
                    layer = -6.000000000000001E-4;
                    break;
                case 216:
                    scale.x = 0.25;
                    scale.y = 0.25;
                    xOffset = int(guiSize.x * (-50.0/100))+50;
                    yOffset = int(guiSize.y * (0.0/100))+72;
                    layer = -5.0E-4;
                    break;
                case 217:
                    xOffset = int(guiSize.x * (-50.0/100))+24;
                    yOffset = int(guiSize.y * (0.0/100))+13;
                    layer = 10.0;
                    break;
                case 218:
                    xOffset = int(guiSize.x * (-50.0/100))+24;
                    yOffset = int(guiSize.y * (0.0/100))+17;
                    layer = 10.0;
                    break;
                case 219:
                    xOffset = int(guiSize.x * (-50.0/100))+24;
                    yOffset = int(guiSize.y * (0.0/100))+21;
                    layer = 10.0;
                    break;
                case 220:
                    xOffset = int(guiSize.x * (-50.0/100))+24;
                    yOffset = int(guiSize.y * (0.0/100))+25;
                    layer = 10.0;
                    break;
                case 221:
                    xOffset = int(guiSize.x * (-50.0/100))+24;
                    yOffset = int(guiSize.y * (0.0/100))+29;
                    layer = 10.0;
                    break;
                case 222:
                    xOffset = int(guiSize.x * (-50.0/100))+24;
                    yOffset = int(guiSize.y * (0.0/100))+33;
                    layer = 10.0;
                    break;
                case 223:
                    xOffset = int(guiSize.x * (-50.0/100))+24;
                    yOffset = int(guiSize.y * (0.0/100))+37;
                    layer = 10.0;
                    break;
                case 224:
                    xOffset = int(guiSize.x * (-50.0/100))+24;
                    yOffset = int(guiSize.y * (0.0/100))+41;
                    layer = 10.0;
                    break;
                case 225:
                    xOffset = int(guiSize.x * (-50.0/100))+24;
                    yOffset = int(guiSize.y * (0.0/100))+45;
                    layer = 10.0;
                    break;
                case 226:
                    xOffset = int(guiSize.x * (-50.0/100))+24;
                    yOffset = int(guiSize.y * (0.0/100))+49;
                    layer = 10.0;
                    break;
                case 227:
                    xOffset = int(guiSize.x * (-50.0/100))+24;
                    yOffset = int(guiSize.y * (0.0/100))+53;
                    layer = 10.0;
                    break;
            }
        }
        else if (id >= 228.0 && id <= 259.0) {
            switch (int(id)) {
                case 228:
                    xOffset = int(guiSize.x * (-50.0/100))+24;
                    yOffset = int(guiSize.y * (0.0/100))+57;
                    layer = 10.0;
                    break;
                case 229:
                    xOffset = int(guiSize.x * (-50.0/100))+24;
                    yOffset = int(guiSize.y * (0.0/100))+61;
                    layer = 10.0;
                    break;
                case 230:
                    xOffset = int(guiSize.x * (-50.0/100))+24;
                    yOffset = int(guiSize.y * (0.0/100))+65;
                    layer = 10.0;
                    break;
                case 231:
                    xOffset = int(guiSize.x * (-50.0/100))+24;
                    yOffset = int(guiSize.y * (0.0/100))+69;
                    layer = 10.0;
                    break;
                case 232:
                    xOffset = int(guiSize.x * (-50.0/100))+24;
                    yOffset = int(guiSize.y * (0.0/100))+73;
                    layer = 10.0;
                    break;
                case 233:
                    scale.x = 0.25;
                    scale.y = 0.25;
                    xOffset = int(guiSize.x * (-50.0/100))+50;
                    yOffset = int(guiSize.y * (0.0/100))+72;
                    layer = -3.0000000000000003E-4;
                    break;
                case 234:
                    xOffset = int(guiSize.x * (-50.0/100))+16;
                    yOffset = int(guiSize.y * (0.0/100))+68;
                    layer = 10.0;
                    break;
                case 235:
                    xOffset = int(guiSize.x * (-50.0/100))+16;
                    yOffset = int(guiSize.y * (0.0/100))+71;
                    layer = 10.0;
                    break;
                case 236:
                    scale.x = 0.66;
                    scale.y = 0.66;
                    xOffset = int(guiSize.x * (-50.0/100))+28;
                    yOffset = int(guiSize.y * (0.0/100))+58;
                    layer = 10.0;
                    outlined = true;
                    break;
                case 237:
                    scale.x = 0.66;
                    scale.y = 0.66;
                    xOffset = int(guiSize.x * (-50.0/100))+28;
                    yOffset = int(guiSize.y * (0.0/100))+60;
                    layer = 10.0;
                    outlined = true;
                    break;
                case 238:
                    scale.x = 0.25;
                    scale.y = 0.25;
                    xOffset = int(guiSize.x * (-50.0/100))-109;
                    yOffset = int(guiSize.y * (0.0/100))+20;
                    layer = -5.0E-4;
                    break;
                case 239:
                    scale.x = 0.25;
                    scale.y = 0.25;
                    xOffset = int(guiSize.x * (-50.0/100))-110;
                    yOffset = int(guiSize.y * (0.0/100))+19;
                    layer = -4.0E-4;
                    break;
                case 240:
                    xOffset = int(guiSize.x * (-50.0/100))-136;
                    yOffset = int(guiSize.y * (0.0/100))-40;
                    layer = 10.0;
                    break;
                case 241:
                    xOffset = int(guiSize.x * (-50.0/100))-136;
                    yOffset = int(guiSize.y * (0.0/100))-36;
                    layer = 10.0;
                    break;
                case 242:
                    xOffset = int(guiSize.x * (-50.0/100))-136;
                    yOffset = int(guiSize.y * (0.0/100))-32;
                    layer = 10.0;
                    break;
                case 243:
                    xOffset = int(guiSize.x * (-50.0/100))-136;
                    yOffset = int(guiSize.y * (0.0/100))-28;
                    layer = 10.0;
                    break;
                case 244:
                    xOffset = int(guiSize.x * (-50.0/100))-136;
                    yOffset = int(guiSize.y * (0.0/100))-24;
                    layer = 10.0;
                    break;
                case 245:
                    xOffset = int(guiSize.x * (-50.0/100))-136;
                    yOffset = int(guiSize.y * (0.0/100))-20;
                    layer = 10.0;
                    break;
                case 246:
                    xOffset = int(guiSize.x * (-50.0/100))-136;
                    yOffset = int(guiSize.y * (0.0/100))-16;
                    layer = 10.0;
                    break;
                case 247:
                    xOffset = int(guiSize.x * (-50.0/100))-136;
                    yOffset = int(guiSize.y * (0.0/100))-12;
                    layer = 10.0;
                    break;
                case 248:
                    xOffset = int(guiSize.x * (-50.0/100))-136;
                    yOffset = int(guiSize.y * (0.0/100))-8;
                    layer = 10.0;
                    break;
                case 249:
                    xOffset = int(guiSize.x * (-50.0/100))-136;
                    yOffset = int(guiSize.y * (0.0/100))-4;
                    layer = 10.0;
                    break;
                case 250:
                    xOffset = int(guiSize.x * (-50.0/100))-136;
                    yOffset = int(guiSize.y * (0.0/100));
                    layer = 10.0;
                    break;
                case 251:
                    xOffset = int(guiSize.x * (-50.0/100))-136;
                    yOffset = int(guiSize.y * (0.0/100))+4;
                    layer = 10.0;
                    break;
                case 252:
                    xOffset = int(guiSize.x * (-50.0/100))-136;
                    yOffset = int(guiSize.y * (0.0/100))+8;
                    layer = 10.0;
                    break;
                case 253:
                    xOffset = int(guiSize.x * (-50.0/100))-136;
                    yOffset = int(guiSize.y * (0.0/100))+12;
                    layer = 10.0;
                    break;
                case 254:
                    xOffset = int(guiSize.x * (-50.0/100))-136;
                    yOffset = int(guiSize.y * (0.0/100))+16;
                    layer = 10.0;
                    break;
                case 255:
                    xOffset = int(guiSize.x * (-50.0/100))-136;
                    yOffset = int(guiSize.y * (0.0/100))+20;
                    layer = 10.0;
                    break;
                case 256:
                    scale.x = 0.25;
                    scale.y = 0.25;
                    xOffset = int(guiSize.x * (-50.0/100))-110;
                    yOffset = int(guiSize.y * (0.0/100))+19;
                    layer = -2.0E-4;
                    break;
                case 257:
                    xOffset = int(guiSize.x * (-50.0/100))-144;
                    yOffset = int(guiSize.y * (0.0/100))+15;
                    layer = 10.0;
                    break;
                case 258:
                    xOffset = int(guiSize.x * (-50.0/100))-144;
                    yOffset = int(guiSize.y * (0.0/100))+18;
                    layer = 10.0;
                    break;
                case 259:
                    xOffset = int(guiSize.x * (-100.0/100))+2;
                    yOffset = int(guiSize.y * (0.0/100))+79;
                    layer = -7.000000000000001E-4;
                    break;
            }
        }
        else if (id >= 260.0 && id <= 291.0) {
            switch (int(id)) {
                case 260:
                    xOffset = int(guiSize.x * (-100.0/100))+5;
                    yOffset = int(guiSize.y * (0.0/100))+26;
                    layer = -6.000000000000001E-4;
                    outlined = true;
                    break;
                case 261:
                    xOffset = int(guiSize.x * (-100.0/100))+5;
                    yOffset = int(guiSize.y * (0.0/100))+36;
                    layer = -5.0E-4;
                    outlined = true;
                    break;
                case 262:
                    xOffset = int(guiSize.x * (-100.0/100))+5;
                    yOffset = int(guiSize.y * (0.0/100))+46;
                    layer = -4.0E-4;
                    outlined = true;
                    break;
                case 263:
                    xOffset = int(guiSize.x * (-100.0/100))+5;
                    yOffset = int(guiSize.y * (0.0/100))+56;
                    layer = -3.0000000000000003E-4;
                    outlined = true;
                    break;
                case 264:
                    xOffset = int(guiSize.x * (-100.0/100))+5;
                    yOffset = int(guiSize.y * (0.0/100))+66;
                    layer = -2.0E-4;
                    outlined = true;
                    break;
                case 265:
                    xOffset = int(guiSize.x * (-100.0/100))+5;
                    yOffset = int(guiSize.y * (0.0/100))+76;
                    layer = -1.0E-4;
                    outlined = true;
                    break;
                case 266:
                    xOffset = int(guiSize.x * (-100.0/100))+2;
                    yOffset = int(guiSize.y * (0.0/100))+13;
                    layer = -7.000000000000001E-4;
                    break;
                case 267:
                    xOffset = int(guiSize.x * (-100.0/100))+2;
                    yOffset = int(guiSize.y * (0.0/100))+13;
                    layer = -6.000000000000001E-4;
                    break;
                case 268:
                    xOffset = int(guiSize.x * (-100.0/100))+2;
                    yOffset = int(guiSize.y * (0.0/100))+13;
                    layer = -5.0E-4;
                    break;
                case 269:
                    xOffset = int(guiSize.x * (-100.0/100))+2;
                    yOffset = int(guiSize.y * (0.0/100))+13;
                    layer = -4.0E-4;
                    break;
                case 270:
                    xOffset = int(guiSize.x * (-100.0/100))+13;
                    yOffset = int(guiSize.y * (0.0/100))+11;
                    layer = -3.0000000000000003E-4;
                    outlined = true;
                    break;
                case 271:
                    xOffset = int(guiSize.x * (-100.0/100))+13;
                    yOffset = int(guiSize.y * (0.0/100))+13;
                    layer = -3.0000000000000003E-4;
                    outlined = true;
                    break;
                case 272:
                    xOffset = int(guiSize.x * (-100.0/100))+13;
                    yOffset = int(guiSize.y * (0.0/100))+11;
                    layer = -2.0E-4;
                    outlined = true;
                    break;
                case 273:
                    xOffset = int(guiSize.x * (-100.0/100))+13;
                    yOffset = int(guiSize.y * (0.0/100))+13;
                    layer = -2.0E-4;
                    outlined = true;
                    break;
                case 274:
                    xOffset = int(guiSize.x * (-100.0/100))+12;
                    yOffset = int(guiSize.y * (0.0/100))+11;
                    layer = -1.0E-4;
                    break;
                case 275:
                    xOffset = int(guiSize.x * (-50.0/100))+1;
                    yOffset = int(guiSize.y * (0.0/100))+27;
                    layer = -4.0E-4;
                    break;
                case 276:
                    xOffset = int(guiSize.x * (-50.0/100));
                    yOffset = int(guiSize.y * (0.0/100))+26;
                    layer = -3.0000000000000003E-4;
                    break;
                case 277:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))-145;
                    yOffset = int(guiSize.y * (0.0/100))+27;
                    layer = -2.0E-4;
                    break;
                case 278:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))-145;
                    yOffset = int(guiSize.y * (0.0/100))+29;
                    layer = -2.0E-4;
                    break;
                case 279:
                    xOffset = int(guiSize.x * (-50.0/100))-88;
                    yOffset = int(guiSize.y * (0.0/100))+28;
                    layer = -1.0E-4;
                    break;
                case 280:
                    xOffset = int(guiSize.x * (-50.0/100))-88;
                    yOffset = int(guiSize.y * (0.0/100))+31;
                    layer = -1.0E-4;
                    break;
                case 281:
                    xOffset = int(guiSize.x * (-50.0/100))+1;
                    yOffset = int(guiSize.y * (50.0/100))-12;
                    layer = -3.0000000000000003E-4;
                    break;
                case 282:
                    xOffset = int(guiSize.x * (-50.0/100));
                    yOffset = int(guiSize.y * (50.0/100))-13;
                    layer = -2.0E-4;
                    break;
                case 283:
                    xOffset = int(guiSize.x * (-50.0/100))+2;
                    yOffset = int(guiSize.y * (50.0/100))-10;
                    layer = -1.0E-4;
                    break;
                case 284:
                    xOffset = int(guiSize.x * (-50.0/100))-1;
                    yOffset = int(guiSize.y * (0.0/100))+49;
                    layer = -6.000000000000001E-4;
                    break;
                case 285:
                    xOffset = int(guiSize.x * (-50.0/100))-2;
                    yOffset = int(guiSize.y * (0.0/100))+48;
                    layer = -5.0E-4;
                    break;
                case 286:
                    xOffset = int(guiSize.x * (-50.0/100))-90;
                    yOffset = int(guiSize.y * (0.0/100))+49;
                    layer = -4.0E-4;
                    break;
                case 287:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))-48;
                    yOffset = int(guiSize.y * (0.0/100))+47;
                    layer = -3.0000000000000003E-4;
                    break;
                case 288:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))-48;
                    yOffset = int(guiSize.y * (0.0/100))+49;
                    layer = -3.0000000000000003E-4;
                    break;
                case 289:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))-44;
                    yOffset = int(guiSize.y * (0.0/100))+47;
                    layer = -2.0E-4;
                    break;
                case 290:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))-44;
                    yOffset = int(guiSize.y * (0.0/100))+49;
                    layer = -2.0E-4;
                    break;
                case 291:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))-42;
                    yOffset = int(guiSize.y * (0.0/100))+47;
                    layer = -1.0E-4;
                    break;
            }
        }
        else if (id >= 292.0 && id <= 323.0) {
            switch (int(id)) {
                case 292:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))-42;
                    yOffset = int(guiSize.y * (0.0/100))+49;
                    layer = -1.0E-4;
                    break;
                case 293:
                    xOffset = int(guiSize.x * (-50.0/100))-1;
                    yOffset = int(guiSize.y * (0.0/100))+38;
                    layer = -8.000000000000001E-4;
                    break;
                case 294:
                    xOffset = int(guiSize.x * (-50.0/100))-2;
                    yOffset = int(guiSize.y * (0.0/100))+37;
                    layer = -7.000000000000001E-4;
                    break;
                case 295:
                    xOffset = int(guiSize.x * (-50.0/100))-2;
                    yOffset = int(guiSize.y * (0.0/100))+37;
                    layer = -6.000000000000001E-4;
                    break;
                case 296:
                    xOffset = int(guiSize.x * (-50.0/100))-90;
                    yOffset = int(guiSize.y * (0.0/100))+38;
                    layer = -5.0E-4;
                    break;
                case 297:
                    xOffset = int(guiSize.x * (-50.0/100))-90;
                    yOffset = int(guiSize.y * (0.0/100))+38;
                    layer = -4.0E-4;
                    break;
                case 298:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))-48;
                    yOffset = int(guiSize.y * (0.0/100))+36;
                    layer = -3.0000000000000003E-4;
                    break;
                case 299:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))-48;
                    yOffset = int(guiSize.y * (0.0/100))+38;
                    layer = -3.0000000000000003E-4;
                    break;
                case 300:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))-44;
                    yOffset = int(guiSize.y * (0.0/100))+36;
                    layer = -2.0E-4;
                    break;
                case 301:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))-44;
                    yOffset = int(guiSize.y * (0.0/100))+38;
                    layer = -2.0E-4;
                    break;
                case 302:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))-42;
                    yOffset = int(guiSize.y * (0.0/100))+36;
                    layer = -1.0E-4;
                    break;
                case 303:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))-42;
                    yOffset = int(guiSize.y * (0.0/100))+38;
                    layer = -1.0E-4;
                    break;
                case 304:
                    xOffset = int(guiSize.x * (-50.0/100))+99;
                    yOffset = int(guiSize.y * (0.0/100))+38;
                    layer = -6.000000000000001E-4;
                    break;
                case 305:
                    xOffset = int(guiSize.x * (-50.0/100))+98;
                    yOffset = int(guiSize.y * (0.0/100))+37;
                    layer = -5.0E-4;
                    break;
                case 306:
                    xOffset = int(guiSize.x * (-50.0/100))+109;
                    yOffset = int(guiSize.y * (0.0/100))+38;
                    layer = -4.0E-4;
                    break;
                case 307:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))+49;
                    yOffset = int(guiSize.y * (0.0/100))+36;
                    layer = -3.0000000000000003E-4;
                    break;
                case 308:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))+49;
                    yOffset = int(guiSize.y * (0.0/100))+38;
                    layer = -3.0000000000000003E-4;
                    break;
                case 309:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))+53;
                    yOffset = int(guiSize.y * (0.0/100))+36;
                    layer = -2.0E-4;
                    break;
                case 310:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))+53;
                    yOffset = int(guiSize.y * (0.0/100))+38;
                    layer = -2.0E-4;
                    break;
                case 311:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))+55;
                    yOffset = int(guiSize.y * (0.0/100))+36;
                    layer = -1.0E-4;
                    break;
                case 312:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))+55;
                    yOffset = int(guiSize.y * (0.0/100))+38;
                    layer = -1.0E-4;
                    break;
                case 313:
                    xOffset = int(guiSize.x * (-50.0/100))+99;
                    yOffset = int(guiSize.y * (0.0/100))+49;
                    layer = 0.9982;
                    break;
                case 314:
                    xOffset = int(guiSize.x * (-50.0/100))+98;
                    yOffset = int(guiSize.y * (0.0/100))+47;
                    layer = 0.9983;
                    break;
                case 315:
                    xOffset = int(guiSize.x * (-50.0/100))+98;
                    yOffset = int(guiSize.y * (0.0/100))+48;
                    layer = 0.9984;
                    break;
                case 316:
                    xOffset = int(guiSize.x * (-50.0/100))+98;
                    yOffset = int(guiSize.y * (0.0/100))+48;
                    layer = 0.9985;
                    break;
                case 317:
                    xOffset = int(guiSize.x * (-50.0/100))+98;
                    yOffset = int(guiSize.y * (0.0/100))+48;
                    layer = 0.9986;
                    break;
                case 318:
                    xOffset = int(guiSize.x * (-50.0/100))+98;
                    yOffset = int(guiSize.y * (0.0/100))+48;
                    layer = 0.9987;
                    break;
                case 319:
                    xOffset = int(guiSize.x * (-50.0/100))+98;
                    yOffset = int(guiSize.y * (0.0/100))+48;
                    layer = 0.9988;
                    break;
                case 320:
                    xOffset = int(guiSize.x * (-50.0/100))+99;
                    yOffset = int(guiSize.y * (0.0/100))+49;
                    layer = 0.9989;
                    break;
                case 321:
                    xOffset = int(guiSize.x * (-50.0/100))+109;
                    yOffset = int(guiSize.y * (0.0/100))+49;
                    layer = 0.999;
                    break;
                case 322:
                    xOffset = int(guiSize.x * (-50.0/100))+109;
                    yOffset = int(guiSize.y * (0.0/100))+49;
                    layer = 0.9991;
                    break;
                case 323:
                    xOffset = int(guiSize.x * (-50.0/100))+109;
                    yOffset = int(guiSize.y * (0.0/100))+49;
                    layer = 0.9992;
                    break;
            }
        }
        else if (id >= 324.0 && id <= 355.0) {
            switch (int(id)) {
                case 324:
                    xOffset = int(guiSize.x * (-50.0/100))+108;
                    yOffset = int(guiSize.y * (0.0/100))+48;
                    layer = 0.9993;
                    break;
                case 325:
                    xOffset = int(guiSize.x * (-50.0/100))+108;
                    yOffset = int(guiSize.y * (0.0/100))+48;
                    layer = 0.9994;
                    break;
                case 326:
                    xOffset = int(guiSize.x * (-50.0/100))+109;
                    yOffset = int(guiSize.y * (0.0/100))+49;
                    layer = 0.9995;
                    break;
                case 327:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))+49;
                    yOffset = int(guiSize.y * (0.0/100))+47;
                    layer = 0.9996;
                    break;
                case 328:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))+49;
                    yOffset = int(guiSize.y * (0.0/100))+49;
                    layer = 0.9996;
                    break;
                case 329:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))+53;
                    yOffset = int(guiSize.y * (0.0/100))+47;
                    layer = 0.9997;
                    break;
                case 330:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))+53;
                    yOffset = int(guiSize.y * (0.0/100))+49;
                    layer = 0.9997;
                    break;
                case 331:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))+55;
                    yOffset = int(guiSize.y * (0.0/100))+47;
                    layer = 0.9998;
                    break;
                case 332:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))+55;
                    yOffset = int(guiSize.y * (0.0/100))+49;
                    layer = 0.9998;
                    break;
                case 333:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))+55;
                    yOffset = int(guiSize.y * (0.0/100))+47;
                    layer = 0.9999;
                    break;
                case 334:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))+55;
                    yOffset = int(guiSize.y * (0.0/100))+49;
                    layer = 0.9999;
                    break;
                case 335:
                    xOffset = int(guiSize.x * (-50.0/100))-10;
                    yOffset = int(guiSize.y * (0.0/100))+65;
                    layer = -3.0000000000000003E-4;
                    break;
                case 336:
                    xOffset = int(guiSize.x * (-50.0/100))-10;
                    yOffset = int(guiSize.y * (0.0/100))+65;
                    layer = -2.0E-4;
                    break;
                case 337:
                    xOffset = int(guiSize.x * (-50.0/100))-5;
                    yOffset = int(guiSize.y * (0.0/100))+67;
                    layer = -1.0E-4;
                    break;
                case 338:
                    xOffset = int(guiSize.x * (-50.0/100))+10;
                    yOffset = int(guiSize.y * (0.0/100))+65;
                    layer = -3.0000000000000003E-4;
                    break;
                case 339:
                    xOffset = int(guiSize.x * (-50.0/100))+10;
                    yOffset = int(guiSize.y * (0.0/100))+65;
                    layer = -2.0E-4;
                    break;
                case 340:
                    xOffset = int(guiSize.x * (-50.0/100))+15;
                    yOffset = int(guiSize.y * (0.0/100))+67;
                    layer = -1.0E-4;
                    break;
                case 341:
                    xOffset = int(guiSize.x * (-50.0/100))-10;
                    yOffset = int(guiSize.y * (0.0/100))+55;
                    layer = -3.0000000000000003E-4;
                    break;
                case 342:
                    xOffset = int(guiSize.x * (-50.0/100))-10;
                    yOffset = int(guiSize.y * (0.0/100))+55;
                    layer = -2.0E-4;
                    break;
                case 343:
                    xOffset = int(guiSize.x * (-50.0/100))-5;
                    yOffset = int(guiSize.y * (0.0/100))+57;
                    layer = -1.0E-4;
                    break;
                case 344:
                    xOffset = int(guiSize.x * (-50.0/100))+10;
                    yOffset = int(guiSize.y * (0.0/100))+55;
                    layer = -3.0000000000000003E-4;
                    break;
                case 345:
                    xOffset = int(guiSize.x * (-50.0/100))+10;
                    yOffset = int(guiSize.y * (0.0/100))+55;
                    layer = -2.0E-4;
                    break;
                case 346:
                    xOffset = int(guiSize.x * (-50.0/100))+15;
                    yOffset = int(guiSize.y * (0.0/100))+57;
                    layer = -1.0E-4;
                    break;
                case 347:
                    xOffset = int(guiSize.x * (-0.0/100))-25;
                    yOffset = int(guiSize.y * (100.0/100))-25;
                    layer = -5.0E-4;
                    break;
                case 348:
                    xOffset = int(guiSize.x * (-0.0/100))-27;
                    yOffset = int(guiSize.y * (100.0/100))-37;
                    layer = -4.0E-4;
                    break;
                case 349:
                    xOffset = int(guiSize.x * (-0.0/100))-28;
                    yOffset = int(guiSize.y * (100.0/100))-45;
                    layer = -3.0000000000000003E-4;
                    outlined = true;
                    break;
                case 350:
                    xOffset = int(guiSize.x * (-0.0/100))-28;
                    yOffset = int(guiSize.y * (100.0/100))-42;
                    layer = -3.0000000000000003E-4;
                    outlined = true;
                    break;
                case 351:
                    xOffset = int(guiSize.x * (-0.0/100))-27;
                    yOffset = int(guiSize.y * (100.0/100))-31;
                    layer = -2.0E-4;
                    break;
                case 352:
                    xOffset = int(guiSize.x * (-0.0/100))-28;
                    yOffset = int(guiSize.y * (100.0/100))-21;
                    layer = -1.0E-4;
                    outlined = true;
                    break;
                case 353:
                    xOffset = int(guiSize.x * (-0.0/100))-28;
                    yOffset = int(guiSize.y * (100.0/100))-18;
                    layer = -1.0E-4;
                    outlined = true;
                    break;
                case 354:
                    xOffset = int(guiSize.x * (-50.0/100));
                    yOffset = int(guiSize.y * (50.0/100))-10;
                    layer = -1.0E-4;
                    outlined = true;
                    break;
                case 355:
                    xOffset = int(guiSize.x * (-50.0/100));
                    yOffset = int(guiSize.y * (50.0/100))-7;
                    layer = -1.0E-4;
                    outlined = true;
                    break;
            }
        }
        else if (id >= 356.0 && id <= 387.0) {
            switch (int(id)) {
                case 356:
                    xOffset = int(guiSize.x * (-50.0/100));
                    yOffset = int(guiSize.y * (50.0/100))-20;
                    layer = -1.0E-4;
                    outlined = true;
                    break;
                case 357:
                    xOffset = int(guiSize.x * (-50.0/100));
                    yOffset = int(guiSize.y * (50.0/100))-17;
                    layer = -1.0E-4;
                    outlined = true;
                    break;
                case 358:
                    xOffset = int(guiSize.x * (-50.0/100));
                    yOffset = int(guiSize.y * (50.0/100))-30;
                    layer = -1.0E-4;
                    outlined = true;
                    break;
                case 359:
                    xOffset = int(guiSize.x * (-50.0/100));
                    yOffset = int(guiSize.y * (50.0/100))-27;
                    layer = -1.0E-4;
                    outlined = true;
                    break;
                case 360:
                    xOffset = int(guiSize.x * (-100.0/100))+20;
                    yOffset = int(guiSize.y * (100.0/100))-20;
                    layer = -4.0E-4;
                    break;
                case 361:
                    xOffset = int(guiSize.x * (-100.0/100))-80;
                    yOffset = int(guiSize.y * (100.0/100))-22;
                    layer = -3.0000000000000003E-4;
                    outlined = true;
                    break;
                case 362:
                    xOffset = int(guiSize.x * (-100.0/100))-80;
                    yOffset = int(guiSize.y * (100.0/100))-19;
                    layer = -3.0000000000000003E-4;
                    outlined = true;
                    break;
                case 363:
                    xOffset = int(guiSize.x * (-100.0/100))-60;
                    yOffset = int(guiSize.y * (100.0/100))-22;
                    layer = -2.0E-4;
                    outlined = true;
                    break;
                case 364:
                    xOffset = int(guiSize.x * (-100.0/100))-60;
                    yOffset = int(guiSize.y * (100.0/100))-19;
                    layer = -2.0E-4;
                    outlined = true;
                    break;
                case 365:
                    xOffset = int(guiSize.x * (-100.0/100))-66;
                    yOffset = int(guiSize.y * (100.0/100))-22;
                    layer = -1.0E-4;
                    break;
                case 366:
                    xOffset = int(guiSize.x * (-100.0/100))+20;
                    yOffset = int(guiSize.y * (100.0/100))-40;
                    layer = -4.0E-4;
                    break;
                case 367:
                    xOffset = int(guiSize.x * (-100.0/100))-80;
                    yOffset = int(guiSize.y * (100.0/100))-42;
                    layer = -3.0000000000000003E-4;
                    outlined = true;
                    break;
                case 368:
                    xOffset = int(guiSize.x * (-100.0/100))-80;
                    yOffset = int(guiSize.y * (100.0/100))-39;
                    layer = -3.0000000000000003E-4;
                    outlined = true;
                    break;
                case 369:
                    xOffset = int(guiSize.x * (-100.0/100))-60;
                    yOffset = int(guiSize.y * (100.0/100))-42;
                    layer = -2.0E-4;
                    outlined = true;
                    break;
                case 370:
                    xOffset = int(guiSize.x * (-100.0/100))-60;
                    yOffset = int(guiSize.y * (100.0/100))-39;
                    layer = -2.0E-4;
                    outlined = true;
                    break;
                case 371:
                    xOffset = int(guiSize.x * (-100.0/100))-66;
                    yOffset = int(guiSize.y * (100.0/100))-42;
                    layer = -1.0E-4;
                    break;
                case 372:
                    xOffset = int(guiSize.x * (-100.0/100))+20;
                    yOffset = int(guiSize.y * (100.0/100))-60;
                    layer = -4.0E-4;
                    break;
                case 373:
                    xOffset = int(guiSize.x * (-100.0/100))-80;
                    yOffset = int(guiSize.y * (100.0/100))-62;
                    layer = -3.0000000000000003E-4;
                    outlined = true;
                    break;
                case 374:
                    xOffset = int(guiSize.x * (-100.0/100))-80;
                    yOffset = int(guiSize.y * (100.0/100))-59;
                    layer = -3.0000000000000003E-4;
                    outlined = true;
                    break;
                case 375:
                    xOffset = int(guiSize.x * (-100.0/100))-60;
                    yOffset = int(guiSize.y * (100.0/100))-62;
                    layer = -2.0E-4;
                    outlined = true;
                    break;
                case 376:
                    xOffset = int(guiSize.x * (-100.0/100))-60;
                    yOffset = int(guiSize.y * (100.0/100))-59;
                    layer = -2.0E-4;
                    outlined = true;
                    break;
                case 377:
                    xOffset = int(guiSize.x * (-100.0/100))-66;
                    yOffset = int(guiSize.y * (100.0/100))-62;
                    layer = -1.0E-4;
                    break;
                case 378:
                    xOffset = int(guiSize.x * (-100.0/100))+20;
                    yOffset = int(guiSize.y * (100.0/100))-80;
                    layer = -4.0E-4;
                    break;
                case 379:
                    xOffset = int(guiSize.x * (-100.0/100))-80;
                    yOffset = int(guiSize.y * (100.0/100))-82;
                    layer = -3.0000000000000003E-4;
                    outlined = true;
                    break;
                case 380:
                    xOffset = int(guiSize.x * (-100.0/100))-80;
                    yOffset = int(guiSize.y * (100.0/100))-79;
                    layer = -3.0000000000000003E-4;
                    outlined = true;
                    break;
                case 381:
                    xOffset = int(guiSize.x * (-100.0/100))-60;
                    yOffset = int(guiSize.y * (100.0/100))-82;
                    layer = -2.0E-4;
                    outlined = true;
                    break;
                case 382:
                    xOffset = int(guiSize.x * (-100.0/100))-60;
                    yOffset = int(guiSize.y * (100.0/100))-79;
                    layer = -2.0E-4;
                    outlined = true;
                    break;
                case 383:
                    xOffset = int(guiSize.x * (-100.0/100))-66;
                    yOffset = int(guiSize.y * (100.0/100))-82;
                    layer = -1.0E-4;
                    break;
                case 384:
                    xOffset = int(guiSize.x * (-100.0/100))+20;
                    yOffset = int(guiSize.y * (100.0/100))-100;
                    layer = -4.0E-4;
                    break;
                case 385:
                    xOffset = int(guiSize.x * (-100.0/100))-80;
                    yOffset = int(guiSize.y * (100.0/100))-102;
                    layer = -3.0000000000000003E-4;
                    outlined = true;
                    break;
                case 386:
                    xOffset = int(guiSize.x * (-100.0/100))-80;
                    yOffset = int(guiSize.y * (100.0/100))-99;
                    layer = -3.0000000000000003E-4;
                    outlined = true;
                    break;
                case 387:
                    xOffset = int(guiSize.x * (-100.0/100))-60;
                    yOffset = int(guiSize.y * (100.0/100))-102;
                    layer = -2.0E-4;
                    outlined = true;
                    break;
            }
        }
        else if (id >= 388.0 && id <= 389.0) {
            switch (int(id)) {
                case 388:
                    xOffset = int(guiSize.x * (-100.0/100))-60;
                    yOffset = int(guiSize.y * (100.0/100))-99;
                    layer = -2.0E-4;
                    outlined = true;
                    break;
                case 389:
                    xOffset = int(guiSize.x * (-100.0/100))-66;
                    yOffset = int(guiSize.y * (100.0/100))-102;
                    layer = -1.0E-4;
                    break;
            }
        }


        // -2800.0 is required for forge comp
        if ((Position.z != 1000.0 && Position.z != -2800.0) || outlined) {
            pos.y -= (id*1000) + 500 + MH_OFFSET;
            pos.x -= (guiSize.x * 0.5);

            pos.x *= scale.x;
            pos.y *= scale.y;

            pos.y += guiSize.y;
            // force align guiScale 3
            if (guiScale == 3) {
                pos.x += 1.45;
            }

            pos -= vec3(xOffset, yOffset, 0.0);
            pos.z += layer + 309.0;
        }
    } else if (XP_HIDE) {
        int offset = int(round(guiSize.y - Position.y));
        int vID = gl_VertexID % 4;

        if ((within(Color.rgb, XP_COLOR, 0.002) && is_at(offset, vID, 26, 27)) || (within(Color.rgb, XP_COLOR_SHADOW, 0.002) && is_at(offset, vID, 25, 26, 27, 28))) {
            pos += XP_OFFSET;
        }
    }

    gl_Position = ProjMat * ModelViewMat * vec4(pos, 1);
}
