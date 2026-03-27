<?php
// Function to get the current page name for active states
function getCurrentPage() {
    return basename($_SERVER['PHP_SELF']);
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MoneyTap | Faster Financial Solutions</title>
    <!-- Tailwind CSS -->
    <script src="https://cdn.tailwindcss.com"></script>
    <!-- Favicon (Removing logo as requested, using default or neutral icon) -->
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;500;600;700;800;900&family=Plus+Jakarta+Sans:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
    <!-- Font Awesome for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <script>
        tailwind.config = {
            theme: {
                extend: {
                    colors: {
                        brand: {
                            primary: '#00D094', // Vibrant Emerald/Mint
                            secondary: '#6366F1', // Indigo
                            dark: '#0B0F19', // Main Bg
                            card: '#161B2A', // Card Bg
                            surface: '#1F2937',
                        },
                        neutral: {
                            heading: '#FFFFFF',
                            body: '#94A3B8',
                        }
                    },
                    fontFamily: {
                        outfit: ['Outfit', 'sans-serif'],
                        jakarta: ['Plus Jakarta Sans', 'sans-serif'],
                    }
                }
            }
        }
    </script>
    <style>
        body {
            font-family: 'Plus Jakarta Sans', 'Outfit', sans-serif;
            background-color: #0B0F19;
            color: #94A3B8;
            overflow-x: hidden;
        }
        .glass {
            background: rgba(22, 27, 42, 0.7);
            backdrop-filter: blur(16px);
            border: 1px solid rgba(255, 255, 255, 0.05);
        }
        .brand-gradient {
            background: linear-gradient(135deg, #00D094 0%, #6366F1 100%);
        }
        .text-gradient {
            background: linear-gradient(135deg, #00D094 0%, #6366F1 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }
        .btn-primary {
            background: #00D094;
            color: #0B0F19;
            font-weight: 800;
            padding: 1rem 2rem;
            border-radius: 1rem;
            transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
            text-transform: uppercase;
            letter-spacing: 0.05em;
        }
        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: 0 10px 20px -5px rgba(0, 208, 148, 0.4);
        }
        .card-premium {
            background: #161B2A;
            border: 1px solid rgba(255, 255, 255, 0.05);
            border-radius: 2rem;
            padding: 2rem;
            transition: all 0.4s ease;
        }
        .card-premium:hover {
            border-color: rgba(0, 208, 148, 0.3);
            transform: translateY(-8px);
        }
        /* Custom scrollbar */
        ::-webkit-scrollbar {
            width: 6px;
        }
        ::-webkit-scrollbar-track {
            background: #0B0F19;
        }
        ::-webkit-scrollbar-thumb {
            background: #1F2937;
            border-radius: 10px;
        }
        ::-webkit-scrollbar-thumb:hover {
            background: #00D094;
        }
        
        @media (max-width: 768px) {
            body { padding-bottom: 80px; }
        }
    </style>
</head>
<body class="selection:bg-brand-primary selection:text-brand-dark">
