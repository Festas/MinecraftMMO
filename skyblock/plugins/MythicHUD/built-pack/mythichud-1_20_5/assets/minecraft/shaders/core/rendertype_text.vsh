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
                    xOffset = int(guiSize.x * (-100.0/100))+2;
                    yOffset = int(guiSize.y * (0.0/100))+79;
                    layer = -7.000000000000001E-4;
                    break;
                case 101:
                    xOffset = int(guiSize.x * (-100.0/100))+5;
                    yOffset = int(guiSize.y * (0.0/100))+26;
                    layer = -6.000000000000001E-4;
                    outlined = true;
                    break;
                case 102:
                    xOffset = int(guiSize.x * (-100.0/100))+5;
                    yOffset = int(guiSize.y * (0.0/100))+36;
                    layer = -5.0E-4;
                    outlined = true;
                    break;
                case 103:
                    xOffset = int(guiSize.x * (-100.0/100))+5;
                    yOffset = int(guiSize.y * (0.0/100))+46;
                    layer = -4.0E-4;
                    outlined = true;
                    break;
                case 104:
                    xOffset = int(guiSize.x * (-100.0/100))+5;
                    yOffset = int(guiSize.y * (0.0/100))+56;
                    layer = -3.0000000000000003E-4;
                    outlined = true;
                    break;
                case 105:
                    xOffset = int(guiSize.x * (-100.0/100))+5;
                    yOffset = int(guiSize.y * (0.0/100))+66;
                    layer = -2.0E-4;
                    outlined = true;
                    break;
                case 106:
                    xOffset = int(guiSize.x * (-100.0/100))+5;
                    yOffset = int(guiSize.y * (0.0/100))+76;
                    layer = -1.0E-4;
                    outlined = true;
                    break;
                case 107:
                    xOffset = int(guiSize.x * (-100.0/100))+2;
                    yOffset = int(guiSize.y * (0.0/100))+13;
                    layer = -7.000000000000001E-4;
                    break;
                case 108:
                    xOffset = int(guiSize.x * (-100.0/100))+2;
                    yOffset = int(guiSize.y * (0.0/100))+13;
                    layer = -6.000000000000001E-4;
                    break;
                case 109:
                    xOffset = int(guiSize.x * (-100.0/100))+2;
                    yOffset = int(guiSize.y * (0.0/100))+13;
                    layer = -5.0E-4;
                    break;
                case 110:
                    xOffset = int(guiSize.x * (-100.0/100))+2;
                    yOffset = int(guiSize.y * (0.0/100))+13;
                    layer = -4.0E-4;
                    break;
                case 111:
                    xOffset = int(guiSize.x * (-100.0/100))+13;
                    yOffset = int(guiSize.y * (0.0/100))+11;
                    layer = -3.0000000000000003E-4;
                    outlined = true;
                    break;
                case 112:
                    xOffset = int(guiSize.x * (-100.0/100))+13;
                    yOffset = int(guiSize.y * (0.0/100))+13;
                    layer = -3.0000000000000003E-4;
                    outlined = true;
                    break;
                case 113:
                    xOffset = int(guiSize.x * (-100.0/100))+13;
                    yOffset = int(guiSize.y * (0.0/100))+11;
                    layer = -2.0E-4;
                    outlined = true;
                    break;
                case 114:
                    xOffset = int(guiSize.x * (-100.0/100))+13;
                    yOffset = int(guiSize.y * (0.0/100))+13;
                    layer = -2.0E-4;
                    outlined = true;
                    break;
                case 115:
                    xOffset = int(guiSize.x * (-100.0/100))+12;
                    yOffset = int(guiSize.y * (0.0/100))+11;
                    layer = -1.0E-4;
                    break;
                case 116:
                    xOffset = int(guiSize.x * (-50.0/100))+1;
                    yOffset = int(guiSize.y * (0.0/100))+27;
                    layer = -4.0E-4;
                    break;
                case 117:
                    xOffset = int(guiSize.x * (-50.0/100));
                    yOffset = int(guiSize.y * (0.0/100))+26;
                    layer = -3.0000000000000003E-4;
                    break;
                case 118:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))-145;
                    yOffset = int(guiSize.y * (0.0/100))+27;
                    layer = -2.0E-4;
                    break;
                case 119:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))-145;
                    yOffset = int(guiSize.y * (0.0/100))+29;
                    layer = -2.0E-4;
                    break;
                case 120:
                    xOffset = int(guiSize.x * (-50.0/100))-88;
                    yOffset = int(guiSize.y * (0.0/100))+28;
                    layer = -1.0E-4;
                    break;
                case 121:
                    xOffset = int(guiSize.x * (-50.0/100))-88;
                    yOffset = int(guiSize.y * (0.0/100))+31;
                    layer = -1.0E-4;
                    break;
                case 122:
                    xOffset = int(guiSize.x * (-50.0/100))+1;
                    yOffset = int(guiSize.y * (50.0/100))-12;
                    layer = -3.0000000000000003E-4;
                    break;
                case 123:
                    xOffset = int(guiSize.x * (-50.0/100));
                    yOffset = int(guiSize.y * (50.0/100))-13;
                    layer = -2.0E-4;
                    break;
                case 124:
                    xOffset = int(guiSize.x * (-50.0/100))+2;
                    yOffset = int(guiSize.y * (50.0/100))-10;
                    layer = -1.0E-4;
                    break;
                case 125:
                    xOffset = int(guiSize.x * (-50.0/100))-1;
                    yOffset = int(guiSize.y * (0.0/100))+49;
                    layer = -6.000000000000001E-4;
                    break;
                case 126:
                    xOffset = int(guiSize.x * (-50.0/100))-2;
                    yOffset = int(guiSize.y * (0.0/100))+48;
                    layer = -5.0E-4;
                    break;
                case 127:
                    xOffset = int(guiSize.x * (-50.0/100))-90;
                    yOffset = int(guiSize.y * (0.0/100))+49;
                    layer = -4.0E-4;
                    break;
                case 128:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))-48;
                    yOffset = int(guiSize.y * (0.0/100))+47;
                    layer = -3.0000000000000003E-4;
                    break;
                case 129:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))-48;
                    yOffset = int(guiSize.y * (0.0/100))+49;
                    layer = -3.0000000000000003E-4;
                    break;
                case 130:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))-44;
                    yOffset = int(guiSize.y * (0.0/100))+47;
                    layer = -2.0E-4;
                    break;
                case 131:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))-44;
                    yOffset = int(guiSize.y * (0.0/100))+49;
                    layer = -2.0E-4;
                    break;
            }
        }
        else if (id >= 132.0 && id <= 163.0) {
            switch (int(id)) {
                case 132:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))-42;
                    yOffset = int(guiSize.y * (0.0/100))+47;
                    layer = -1.0E-4;
                    break;
                case 133:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))-42;
                    yOffset = int(guiSize.y * (0.0/100))+49;
                    layer = -1.0E-4;
                    break;
                case 134:
                    xOffset = int(guiSize.x * (-50.0/100))-1;
                    yOffset = int(guiSize.y * (0.0/100))+38;
                    layer = -8.000000000000001E-4;
                    break;
                case 135:
                    xOffset = int(guiSize.x * (-50.0/100))-2;
                    yOffset = int(guiSize.y * (0.0/100))+37;
                    layer = -7.000000000000001E-4;
                    break;
                case 136:
                    xOffset = int(guiSize.x * (-50.0/100))-2;
                    yOffset = int(guiSize.y * (0.0/100))+37;
                    layer = -6.000000000000001E-4;
                    break;
                case 137:
                    xOffset = int(guiSize.x * (-50.0/100))-90;
                    yOffset = int(guiSize.y * (0.0/100))+38;
                    layer = -5.0E-4;
                    break;
                case 138:
                    xOffset = int(guiSize.x * (-50.0/100))-90;
                    yOffset = int(guiSize.y * (0.0/100))+38;
                    layer = -4.0E-4;
                    break;
                case 139:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))-48;
                    yOffset = int(guiSize.y * (0.0/100))+36;
                    layer = -3.0000000000000003E-4;
                    break;
                case 140:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))-48;
                    yOffset = int(guiSize.y * (0.0/100))+38;
                    layer = -3.0000000000000003E-4;
                    break;
                case 141:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))-44;
                    yOffset = int(guiSize.y * (0.0/100))+36;
                    layer = -2.0E-4;
                    break;
                case 142:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))-44;
                    yOffset = int(guiSize.y * (0.0/100))+38;
                    layer = -2.0E-4;
                    break;
                case 143:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))-42;
                    yOffset = int(guiSize.y * (0.0/100))+36;
                    layer = -1.0E-4;
                    break;
                case 144:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))-42;
                    yOffset = int(guiSize.y * (0.0/100))+38;
                    layer = -1.0E-4;
                    break;
                case 145:
                    xOffset = int(guiSize.x * (-50.0/100))+99;
                    yOffset = int(guiSize.y * (0.0/100))+38;
                    layer = -6.000000000000001E-4;
                    break;
                case 146:
                    xOffset = int(guiSize.x * (-50.0/100))+98;
                    yOffset = int(guiSize.y * (0.0/100))+37;
                    layer = -5.0E-4;
                    break;
                case 147:
                    xOffset = int(guiSize.x * (-50.0/100))+109;
                    yOffset = int(guiSize.y * (0.0/100))+38;
                    layer = -4.0E-4;
                    break;
                case 148:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))+49;
                    yOffset = int(guiSize.y * (0.0/100))+36;
                    layer = -3.0000000000000003E-4;
                    break;
                case 149:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))+49;
                    yOffset = int(guiSize.y * (0.0/100))+38;
                    layer = -3.0000000000000003E-4;
                    break;
                case 150:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))+53;
                    yOffset = int(guiSize.y * (0.0/100))+36;
                    layer = -2.0E-4;
                    break;
                case 151:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))+53;
                    yOffset = int(guiSize.y * (0.0/100))+38;
                    layer = -2.0E-4;
                    break;
                case 152:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))+55;
                    yOffset = int(guiSize.y * (0.0/100))+36;
                    layer = -1.0E-4;
                    break;
                case 153:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))+55;
                    yOffset = int(guiSize.y * (0.0/100))+38;
                    layer = -1.0E-4;
                    break;
                case 154:
                    xOffset = int(guiSize.x * (-50.0/100))+99;
                    yOffset = int(guiSize.y * (0.0/100))+49;
                    layer = 0.9982;
                    break;
                case 155:
                    xOffset = int(guiSize.x * (-50.0/100))+98;
                    yOffset = int(guiSize.y * (0.0/100))+47;
                    layer = 0.9983;
                    break;
                case 156:
                    xOffset = int(guiSize.x * (-50.0/100))+98;
                    yOffset = int(guiSize.y * (0.0/100))+48;
                    layer = 0.9984;
                    break;
                case 157:
                    xOffset = int(guiSize.x * (-50.0/100))+98;
                    yOffset = int(guiSize.y * (0.0/100))+48;
                    layer = 0.9985;
                    break;
                case 158:
                    xOffset = int(guiSize.x * (-50.0/100))+98;
                    yOffset = int(guiSize.y * (0.0/100))+48;
                    layer = 0.9986;
                    break;
                case 159:
                    xOffset = int(guiSize.x * (-50.0/100))+98;
                    yOffset = int(guiSize.y * (0.0/100))+48;
                    layer = 0.9987;
                    break;
                case 160:
                    xOffset = int(guiSize.x * (-50.0/100))+98;
                    yOffset = int(guiSize.y * (0.0/100))+48;
                    layer = 0.9988;
                    break;
                case 161:
                    xOffset = int(guiSize.x * (-50.0/100))+99;
                    yOffset = int(guiSize.y * (0.0/100))+49;
                    layer = 0.9989;
                    break;
                case 162:
                    xOffset = int(guiSize.x * (-50.0/100))+109;
                    yOffset = int(guiSize.y * (0.0/100))+49;
                    layer = 0.999;
                    break;
                case 163:
                    xOffset = int(guiSize.x * (-50.0/100))+109;
                    yOffset = int(guiSize.y * (0.0/100))+49;
                    layer = 0.9991;
                    break;
            }
        }
        else if (id >= 164.0 && id <= 195.0) {
            switch (int(id)) {
                case 164:
                    xOffset = int(guiSize.x * (-50.0/100))+109;
                    yOffset = int(guiSize.y * (0.0/100))+49;
                    layer = 0.9992;
                    break;
                case 165:
                    xOffset = int(guiSize.x * (-50.0/100))+108;
                    yOffset = int(guiSize.y * (0.0/100))+48;
                    layer = 0.9993;
                    break;
                case 166:
                    xOffset = int(guiSize.x * (-50.0/100))+108;
                    yOffset = int(guiSize.y * (0.0/100))+48;
                    layer = 0.9994;
                    break;
                case 167:
                    xOffset = int(guiSize.x * (-50.0/100))+109;
                    yOffset = int(guiSize.y * (0.0/100))+49;
                    layer = 0.9995;
                    break;
                case 168:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))+49;
                    yOffset = int(guiSize.y * (0.0/100))+47;
                    layer = 0.9996;
                    break;
                case 169:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))+49;
                    yOffset = int(guiSize.y * (0.0/100))+49;
                    layer = 0.9996;
                    break;
                case 170:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))+53;
                    yOffset = int(guiSize.y * (0.0/100))+47;
                    layer = 0.9997;
                    break;
                case 171:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))+53;
                    yOffset = int(guiSize.y * (0.0/100))+49;
                    layer = 0.9997;
                    break;
                case 172:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))+55;
                    yOffset = int(guiSize.y * (0.0/100))+47;
                    layer = 0.9998;
                    break;
                case 173:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))+55;
                    yOffset = int(guiSize.y * (0.0/100))+49;
                    layer = 0.9998;
                    break;
                case 174:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))+55;
                    yOffset = int(guiSize.y * (0.0/100))+47;
                    layer = 0.9999;
                    break;
                case 175:
                    scale.x = 0.6666;
                    scale.y = 0.6666;
                    xOffset = int(guiSize.x * (-50.0/100))+55;
                    yOffset = int(guiSize.y * (0.0/100))+49;
                    layer = 0.9999;
                    break;
                case 176:
                    xOffset = int(guiSize.x * (-50.0/100))-10;
                    yOffset = int(guiSize.y * (0.0/100))+65;
                    layer = -3.0000000000000003E-4;
                    break;
                case 177:
                    xOffset = int(guiSize.x * (-50.0/100))-10;
                    yOffset = int(guiSize.y * (0.0/100))+65;
                    layer = -2.0E-4;
                    break;
                case 178:
                    xOffset = int(guiSize.x * (-50.0/100))-5;
                    yOffset = int(guiSize.y * (0.0/100))+67;
                    layer = -1.0E-4;
                    break;
                case 179:
                    xOffset = int(guiSize.x * (-50.0/100))+10;
                    yOffset = int(guiSize.y * (0.0/100))+65;
                    layer = -3.0000000000000003E-4;
                    break;
                case 180:
                    xOffset = int(guiSize.x * (-50.0/100))+10;
                    yOffset = int(guiSize.y * (0.0/100))+65;
                    layer = -2.0E-4;
                    break;
                case 181:
                    xOffset = int(guiSize.x * (-50.0/100))+15;
                    yOffset = int(guiSize.y * (0.0/100))+67;
                    layer = -1.0E-4;
                    break;
                case 182:
                    xOffset = int(guiSize.x * (-50.0/100))-10;
                    yOffset = int(guiSize.y * (0.0/100))+55;
                    layer = -3.0000000000000003E-4;
                    break;
                case 183:
                    xOffset = int(guiSize.x * (-50.0/100))-10;
                    yOffset = int(guiSize.y * (0.0/100))+55;
                    layer = -2.0E-4;
                    break;
                case 184:
                    xOffset = int(guiSize.x * (-50.0/100))-5;
                    yOffset = int(guiSize.y * (0.0/100))+57;
                    layer = -1.0E-4;
                    break;
                case 185:
                    xOffset = int(guiSize.x * (-50.0/100))+10;
                    yOffset = int(guiSize.y * (0.0/100))+55;
                    layer = -3.0000000000000003E-4;
                    break;
                case 186:
                    xOffset = int(guiSize.x * (-50.0/100))+10;
                    yOffset = int(guiSize.y * (0.0/100))+55;
                    layer = -2.0E-4;
                    break;
                case 187:
                    xOffset = int(guiSize.x * (-50.0/100))+15;
                    yOffset = int(guiSize.y * (0.0/100))+57;
                    layer = -1.0E-4;
                    break;
                case 188:
                    xOffset = int(guiSize.x * (-0.0/100))-25;
                    yOffset = int(guiSize.y * (100.0/100))-25;
                    layer = -5.0E-4;
                    break;
                case 189:
                    xOffset = int(guiSize.x * (-0.0/100))-27;
                    yOffset = int(guiSize.y * (100.0/100))-37;
                    layer = -4.0E-4;
                    break;
                case 190:
                    xOffset = int(guiSize.x * (-0.0/100))-28;
                    yOffset = int(guiSize.y * (100.0/100))-45;
                    layer = -3.0000000000000003E-4;
                    outlined = true;
                    break;
                case 191:
                    xOffset = int(guiSize.x * (-0.0/100))-28;
                    yOffset = int(guiSize.y * (100.0/100))-42;
                    layer = -3.0000000000000003E-4;
                    outlined = true;
                    break;
                case 192:
                    xOffset = int(guiSize.x * (-0.0/100))-27;
                    yOffset = int(guiSize.y * (100.0/100))-31;
                    layer = -2.0E-4;
                    break;
                case 193:
                    xOffset = int(guiSize.x * (-0.0/100))-28;
                    yOffset = int(guiSize.y * (100.0/100))-21;
                    layer = -1.0E-4;
                    outlined = true;
                    break;
                case 194:
                    xOffset = int(guiSize.x * (-0.0/100))-28;
                    yOffset = int(guiSize.y * (100.0/100))-18;
                    layer = -1.0E-4;
                    outlined = true;
                    break;
                case 195:
                    xOffset = int(guiSize.x * (-50.0/100));
                    yOffset = int(guiSize.y * (50.0/100))-10;
                    layer = -1.0E-4;
                    outlined = true;
                    break;
            }
        }
        else if (id >= 196.0 && id <= 227.0) {
            switch (int(id)) {
                case 196:
                    xOffset = int(guiSize.x * (-50.0/100));
                    yOffset = int(guiSize.y * (50.0/100))-7;
                    layer = -1.0E-4;
                    outlined = true;
                    break;
                case 197:
                    xOffset = int(guiSize.x * (-50.0/100));
                    yOffset = int(guiSize.y * (50.0/100))-20;
                    layer = -1.0E-4;
                    outlined = true;
                    break;
                case 198:
                    xOffset = int(guiSize.x * (-50.0/100));
                    yOffset = int(guiSize.y * (50.0/100))-17;
                    layer = -1.0E-4;
                    outlined = true;
                    break;
                case 199:
                    xOffset = int(guiSize.x * (-50.0/100));
                    yOffset = int(guiSize.y * (50.0/100))-30;
                    layer = -1.0E-4;
                    outlined = true;
                    break;
                case 200:
                    xOffset = int(guiSize.x * (-50.0/100));
                    yOffset = int(guiSize.y * (50.0/100))-27;
                    layer = -1.0E-4;
                    outlined = true;
                    break;
                case 201:
                    xOffset = int(guiSize.x * (-100.0/100))+20;
                    yOffset = int(guiSize.y * (100.0/100))-20;
                    layer = -4.0E-4;
                    break;
                case 202:
                    xOffset = int(guiSize.x * (-100.0/100))-80;
                    yOffset = int(guiSize.y * (100.0/100))-22;
                    layer = -3.0000000000000003E-4;
                    outlined = true;
                    break;
                case 203:
                    xOffset = int(guiSize.x * (-100.0/100))-80;
                    yOffset = int(guiSize.y * (100.0/100))-19;
                    layer = -3.0000000000000003E-4;
                    outlined = true;
                    break;
                case 204:
                    xOffset = int(guiSize.x * (-100.0/100))-60;
                    yOffset = int(guiSize.y * (100.0/100))-22;
                    layer = -2.0E-4;
                    outlined = true;
                    break;
                case 205:
                    xOffset = int(guiSize.x * (-100.0/100))-60;
                    yOffset = int(guiSize.y * (100.0/100))-19;
                    layer = -2.0E-4;
                    outlined = true;
                    break;
                case 206:
                    xOffset = int(guiSize.x * (-100.0/100))-66;
                    yOffset = int(guiSize.y * (100.0/100))-22;
                    layer = -1.0E-4;
                    break;
                case 207:
                    xOffset = int(guiSize.x * (-100.0/100))+20;
                    yOffset = int(guiSize.y * (100.0/100))-40;
                    layer = -4.0E-4;
                    break;
                case 208:
                    xOffset = int(guiSize.x * (-100.0/100))-80;
                    yOffset = int(guiSize.y * (100.0/100))-42;
                    layer = -3.0000000000000003E-4;
                    outlined = true;
                    break;
                case 209:
                    xOffset = int(guiSize.x * (-100.0/100))-80;
                    yOffset = int(guiSize.y * (100.0/100))-39;
                    layer = -3.0000000000000003E-4;
                    outlined = true;
                    break;
                case 210:
                    xOffset = int(guiSize.x * (-100.0/100))-60;
                    yOffset = int(guiSize.y * (100.0/100))-42;
                    layer = -2.0E-4;
                    outlined = true;
                    break;
                case 211:
                    xOffset = int(guiSize.x * (-100.0/100))-60;
                    yOffset = int(guiSize.y * (100.0/100))-39;
                    layer = -2.0E-4;
                    outlined = true;
                    break;
                case 212:
                    xOffset = int(guiSize.x * (-100.0/100))-66;
                    yOffset = int(guiSize.y * (100.0/100))-42;
                    layer = -1.0E-4;
                    break;
                case 213:
                    xOffset = int(guiSize.x * (-100.0/100))+20;
                    yOffset = int(guiSize.y * (100.0/100))-60;
                    layer = -4.0E-4;
                    break;
                case 214:
                    xOffset = int(guiSize.x * (-100.0/100))-80;
                    yOffset = int(guiSize.y * (100.0/100))-62;
                    layer = -3.0000000000000003E-4;
                    outlined = true;
                    break;
                case 215:
                    xOffset = int(guiSize.x * (-100.0/100))-80;
                    yOffset = int(guiSize.y * (100.0/100))-59;
                    layer = -3.0000000000000003E-4;
                    outlined = true;
                    break;
                case 216:
                    xOffset = int(guiSize.x * (-100.0/100))-60;
                    yOffset = int(guiSize.y * (100.0/100))-62;
                    layer = -2.0E-4;
                    outlined = true;
                    break;
                case 217:
                    xOffset = int(guiSize.x * (-100.0/100))-60;
                    yOffset = int(guiSize.y * (100.0/100))-59;
                    layer = -2.0E-4;
                    outlined = true;
                    break;
                case 218:
                    xOffset = int(guiSize.x * (-100.0/100))-66;
                    yOffset = int(guiSize.y * (100.0/100))-62;
                    layer = -1.0E-4;
                    break;
                case 219:
                    xOffset = int(guiSize.x * (-100.0/100))+20;
                    yOffset = int(guiSize.y * (100.0/100))-80;
                    layer = -4.0E-4;
                    break;
                case 220:
                    xOffset = int(guiSize.x * (-100.0/100))-80;
                    yOffset = int(guiSize.y * (100.0/100))-82;
                    layer = -3.0000000000000003E-4;
                    outlined = true;
                    break;
                case 221:
                    xOffset = int(guiSize.x * (-100.0/100))-80;
                    yOffset = int(guiSize.y * (100.0/100))-79;
                    layer = -3.0000000000000003E-4;
                    outlined = true;
                    break;
                case 222:
                    xOffset = int(guiSize.x * (-100.0/100))-60;
                    yOffset = int(guiSize.y * (100.0/100))-82;
                    layer = -2.0E-4;
                    outlined = true;
                    break;
                case 223:
                    xOffset = int(guiSize.x * (-100.0/100))-60;
                    yOffset = int(guiSize.y * (100.0/100))-79;
                    layer = -2.0E-4;
                    outlined = true;
                    break;
                case 224:
                    xOffset = int(guiSize.x * (-100.0/100))-66;
                    yOffset = int(guiSize.y * (100.0/100))-82;
                    layer = -1.0E-4;
                    break;
                case 225:
                    xOffset = int(guiSize.x * (-100.0/100))+20;
                    yOffset = int(guiSize.y * (100.0/100))-100;
                    layer = -4.0E-4;
                    break;
                case 226:
                    xOffset = int(guiSize.x * (-100.0/100))-80;
                    yOffset = int(guiSize.y * (100.0/100))-102;
                    layer = -3.0000000000000003E-4;
                    outlined = true;
                    break;
                case 227:
                    xOffset = int(guiSize.x * (-100.0/100))-80;
                    yOffset = int(guiSize.y * (100.0/100))-99;
                    layer = -3.0000000000000003E-4;
                    outlined = true;
                    break;
            }
        }
        else if (id >= 228.0 && id <= 230.0) {
            switch (int(id)) {
                case 228:
                    xOffset = int(guiSize.x * (-100.0/100))-60;
                    yOffset = int(guiSize.y * (100.0/100))-102;
                    layer = -2.0E-4;
                    outlined = true;
                    break;
                case 229:
                    xOffset = int(guiSize.x * (-100.0/100))-60;
                    yOffset = int(guiSize.y * (100.0/100))-99;
                    layer = -2.0E-4;
                    outlined = true;
                    break;
                case 230:
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
