
# My Extras

## 🖇️ Ferramentas de Clipboard similares a `xclip` / `xsel` utilizados para yank from neovim to so clipboard

### 🐧 Linux

#### X11

| Aplicativo     | Interface gráfica? | Notas |
|----------------|--------------------|-------|
| **xclip**      | ❌ Não              | Popular, direto ao ponto. |
| **xsel**       | ❌ Não              | Alternativa ao xclip. Sintaxe diferente. |
| **clipman**    | ✅ Sim              | Histórico simples. |
| **parcellite** | ✅ Sim              | Histórico de clipboard. GUI leve. |
| **copyq**      | ✅ Sim              | Avançado, multiplataforma. Histórico e scripts. |
| **clipit**     | ✅ Sim              | Fork do Parcellite. |
| **clipmenu**   | ❌ Não              | Usa `xclip` ou `xsel` com `dmenu`. |
| **greenclip**  | ❌ Não              | Histórico para `rofi`/`dmenu`. |

#### Wayland

| Aplicativo     | Interface gráfica? | Notas |
|----------------|--------------------|-------|
| **wl-clipboard** (`wl-copy`, `wl-paste`) | ❌ Não | Recomendado para Wayland. |
| **copyq**      | ✅ Sim              | Compatível também com Wayland. |
| **gpaste**     | ✅ Sim              | Integrado ao GNOME. CLI + GUI. |
| **greenclip**  | ❌ Não              | Funciona em Wayland com `rofi`. |

---

### 🍏 macOS

| Aplicativo         | Interface gráfica? | Notas |
|--------------------|--------------------|-------|
| **pbcopy / pbpaste** | ❌ Não            | Ferramentas nativas. |
| **clipboard-cli**   | ❌ Não              | Multiplataforma. |
| **copyq**          | ✅ Sim              | Compatível com macOS. |
| **pasteboard**     | ✅ Sim              | GUI para clipboard. |

---

#### 🪟 Windows

| Aplicativo     | Interface gráfica? | Notas |
|----------------|--------------------|-------|
| **clip.exe**   | ❌ Não              | Nativo no Windows. |
| **win32yank.exe** | ❌ Não           | Muito usado com Neovim e WSL. |
| **copyq**      | ✅ Sim              | Suporte completo. |
| **AutoHotkey** | ✅ Sim (scripts)    | Permite automações avançadas. |

---

### 🌐 Multiplataforma

| Aplicativo         | SOs compatíveis         | Notas |
|--------------------|-------------------------|-------|
| **clipboard-cli**   | Linux, macOS, Windows   | Baseado em Rust. Simples e moderno. |
| **copyq**          | Linux, macOS, Windows   | Interface gráfica avançada. |
| **clipnotify + clipmenud** | Linux         | Sistema leve de clipboard com histórico. |

---

### 💡 Dica por ambiente gráfico

- **Wayland**: `wl-clipboard`
- **X11 (leve)**: `xclip` ou `xsel`
- **GNOME**: `gpaste`
- **KDE**: já possui clipboard integrado
- **Usuários de `rofi` ou `dmenu`**: `greenclip`, `clipmenu`

### Debug with Microsft vscode-js-debug

mkdir -p ~/.local/share/nvim/dap_adapters
cd ~/.local/share/nvim/dap_adapters
git clone <https://github.com/microsoft/vscode-js-debug.git>
cd vscode-js-debug
npm install
npm run build

### for ruby debug install

bundle add debug

### rum server this way

bundle exec rdbg -n --open --port 38698 -- bin/rails server
