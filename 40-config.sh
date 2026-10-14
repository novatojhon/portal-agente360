#!/bin/sh
# Genera config.js con las variables de entorno definidas en EasyPanel
# (SUPABASE_URL, SUPABASE_ANON_KEY, N8N_URL). No contiene claves secretas:
# la ANON_KEY es pública por diseño y la seguridad la da RLS en Supabase.
cat > /usr/share/nginx/html/config.js <<EOF
window.PORTAL_CONFIG = {
  SUPABASE_URL: "${SUPABASE_URL}",
  SUPABASE_ANON_KEY: "${SUPABASE_ANON_KEY}",
  N8N_URL: "${N8N_URL}"
};
EOF
