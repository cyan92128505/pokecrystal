// 0xdcea;
// 0xde08;
// adb push ./pokecrystal_ambrosia.sav /sdcard/Android/data/com.sky.SkyEmu/files/pokecrystal_ambrosia.sav
// adb pull /sdcard/Android/data/com.sky.SkyEmu/files/pokecrystal_ambrosia.sav ./pokecrystal_ambrosia.sav

const hexString =
  "D8000A171D00ACBC001F40177919C4151F19EF1E37A88823140F00B2004582140000003900390030001F002C00200020CB972C2B631D07DA0027100F9B0FF20DEB0EEA167DDDDD191E140F8700007E14000000380038002A00240020001D0019ED0021C5A30FACBC0019001D8E20B31A5B226323F5FDFF230F141EBE004582140000003E003E005600310059002E0031280098032F32ACBC00190018B11B3316371BB8201E962B140A0F14C800C381140000005D005D0028001C001B002F0021190054225662ACBC001F4017D31A3C15651A711EA56EC61E0F141EA0000784140000002F002F0021001E0036001F001F9C00B72B3402ACBC0015541CAC1F7A193521822349508E1E1E1919B300C58114000000540054003A0038003C003E003E";

// 定義寶可夢結構大小
const PARTYMON_STRUCT_LENGTH = 48;

// 將十六進位字串轉換為位元組陣列
function hexToBytes(hex) {
  const bytes = [];
  for (let i = 0; i < hex.length; i += 2) {
    bytes.push(parseInt(hex.substr(i, 2), 16));
  }
  return bytes;
}

const bytes = hexToBytes(hexString);

// 解析每隻寶可夢
for (let i = 0; i < 6; i++) {
  const offset = i * PARTYMON_STRUCT_LENGTH;
  const pokemonData = {
    species: bytes[offset + 0],
    item: bytes[offset + 1],
    moves: [
      bytes[offset + 2],
      bytes[offset + 3],
      bytes[offset + 4],
      bytes[offset + 5],
    ],
    level: bytes[offset + 0x1f],
    currentHP: (bytes[offset + 0x22] << 8) + bytes[offset + 0x23],
    maxHP: (bytes[offset + 0x24] << 8) + bytes[offset + 0x25],
    attack: (bytes[offset + 0x26] << 8) + bytes[offset + 0x27],
    defense: (bytes[offset + 0x28] << 8) + bytes[offset + 0x29],
    speed: (bytes[offset + 0x2a] << 8) + bytes[offset + 0x2b],
    spAtk: (bytes[offset + 0x2c] << 8) + bytes[offset + 0x2d],
    spDef: (bytes[offset + 0x2e] << 8) + bytes[offset + 0x2f],
  };

  console.log(`\n寶可夢 #${i + 1}:`);
  console.log(`圖鑑編號: ${pokemonData.species}`);
  console.log(`等級: ${pokemonData.level}`);
  console.log(`HP: ${pokemonData.currentHP}/${pokemonData.maxHP}`);
  console.log(`攻擊: ${pokemonData.attack}`);
  console.log(`防禦: ${pokemonData.defense}`);
  console.log(`速度: ${pokemonData.speed}`);
  console.log(`特攻: ${pokemonData.spAtk}`);
  console.log(`特防: ${pokemonData.spDef}`);
  console.log(`招式: [${pokemonData.moves.join(", ")}]`);
  console.log(`持有道具: ${pokemonData.item}`);
}

// 將記憶體資料轉換為Pokemon物件陣列
function memoryToPokemons(hexString) {
  const PARTYMON_STRUCT_LENGTH = 48;

  // 將十六進位字串轉換為位元組陣列
  function hexToBytes(hex) {
    const bytes = [];
    for (let i = 0; i < hex.length; i += 2) {
      bytes.push(parseInt(hex.substr(i, 2), 16));
    }
    return bytes;
  }

  const bytes = hexToBytes(hexString);
  const pokemons = [];

  for (let i = 0; i < 6; i++) {
    const offset = i * PARTYMON_STRUCT_LENGTH;
    const pokemonData = {
      species: bytes[offset + 0x00],
      item: bytes[offset + 0x01],
      moves: [
        bytes[offset + 0x02],
        bytes[offset + 0x03],
        bytes[offset + 0x04],
        bytes[offset + 0x05],
      ],
      trainerID: (bytes[offset + 0x06] << 8) + bytes[offset + 0x07],
      experience:
        (bytes[offset + 0x08] << 16) +
        (bytes[offset + 0x09] << 8) +
        bytes[offset + 0x0a],
      statExp: {
        hp: (bytes[offset + 0x0b] << 8) + bytes[offset + 0x0c],
        attack: (bytes[offset + 0x0d] << 8) + bytes[offset + 0x0e],
        defense: (bytes[offset + 0x0f] << 8) + bytes[offset + 0x10],
        speed: (bytes[offset + 0x11] << 8) + bytes[offset + 0x12],
        special: (bytes[offset + 0x13] << 8) + bytes[offset + 0x14],
      },
      dvs: (bytes[offset + 0x15] << 8) + bytes[offset + 0x16],
      pp: [
        bytes[offset + 0x17],
        bytes[offset + 0x18],
        bytes[offset + 0x19],
        bytes[offset + 0x1a],
      ],
      happiness: bytes[offset + 0x1b],
      pokerus: bytes[offset + 0x1c],
      caughtData: {
        time: bytes[offset + 0x1d],
        level: bytes[offset + 0x1e],
      },
      level: bytes[offset + 0x1f],
      status: bytes[offset + 0x20],
      unused: bytes[offset + 0x21],
      currentHP: (bytes[offset + 0x22] << 8) + bytes[offset + 0x23],
      maxHP: (bytes[offset + 0x24] << 8) + bytes[offset + 0x25],
      stats: {
        attack: (bytes[offset + 0x26] << 8) + bytes[offset + 0x27],
        defense: (bytes[offset + 0x28] << 8) + bytes[offset + 0x29],
        speed: (bytes[offset + 0x2a] << 8) + bytes[offset + 0x2b],
        spAtk: (bytes[offset + 0x2c] << 8) + bytes[offset + 0x2d],
        spDef: (bytes[offset + 0x2e] << 8) + bytes[offset + 0x2f],
      },
    };
    pokemons.push(pokemonData);
  }
  return pokemons;
}

// 將Pokemon物件陣列轉回記憶體資料
function pokemonsToMemory(pokemons) {
  const bytes = [];

  function numberToBytes(num, length) {
    const result = [];
    for (let i = 0; i < length; i++) {
      result.unshift(num & 0xff);
      num = num >> 8;
    }
    return result;
  }

  pokemons.forEach((pokemon) => {
    // Species (1 byte)
    bytes.push(pokemon.species);

    // Item (1 byte)
    bytes.push(pokemon.item);

    // Moves (4 bytes)
    bytes.push(...pokemon.moves);

    // Trainer ID (2 bytes)
    bytes.push(...numberToBytes(pokemon.trainerID, 2));

    // Experience (3 bytes)
    bytes.push(...numberToBytes(pokemon.experience, 3));

    // Stat Exp (10 bytes)
    bytes.push(...numberToBytes(pokemon.statExp.hp, 2));
    bytes.push(...numberToBytes(pokemon.statExp.attack, 2));
    bytes.push(...numberToBytes(pokemon.statExp.defense, 2));
    bytes.push(...numberToBytes(pokemon.statExp.speed, 2));
    bytes.push(...numberToBytes(pokemon.statExp.special, 2));

    // DVs (2 bytes)
    bytes.push(...numberToBytes(pokemon.dvs, 2));

    // PP (4 bytes)
    bytes.push(...pokemon.pp);

    // Happiness (1 byte)
    bytes.push(pokemon.happiness);

    // Pokerus (1 byte)
    bytes.push(pokemon.pokerus);

    // Caught Data (2 bytes)
    bytes.push(pokemon.caughtData.time);
    bytes.push(pokemon.caughtData.level);

    // Level (1 byte)
    bytes.push(pokemon.level);

    // Status (1 byte)
    bytes.push(pokemon.status);

    // Unused (1 byte)
    bytes.push(pokemon.unused);

    // Current HP (2 bytes)
    bytes.push(...numberToBytes(pokemon.currentHP, 2));

    // Max HP (2 bytes)
    bytes.push(...numberToBytes(pokemon.maxHP, 2));

    // Stats (10 bytes)
    bytes.push(...numberToBytes(pokemon.stats.attack, 2));
    bytes.push(...numberToBytes(pokemon.stats.defense, 2));
    bytes.push(...numberToBytes(pokemon.stats.speed, 2));
    bytes.push(...numberToBytes(pokemon.stats.spAtk, 2));
    bytes.push(...numberToBytes(pokemon.stats.spDef, 2));
  });

  // 轉換回十六進位字串
  return bytes
    .map((b) => b.toString(16).padStart(2, "0"))
    .join("")
    .toUpperCase();
}

// 使用範例
const pokemons = memoryToPokemons(hexString);
console.log("Pokemon 物件：", JSON.stringify(pokemons[0], null, 2));

// 轉換回記憶體資料
const newHexString = pokemonsToMemory(pokemons);
console.log("記憶體資料是否相同：", hexString === newHexString);
