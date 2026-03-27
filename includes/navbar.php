<?php
$currentPage = getCurrentPage();
?>
<nav class="fixed top-0 left-0 w-full z-50 transition-all duration-300">
    <!-- Top Contact Pop Bar -->
    <div class="bg-brand-dark text-white/50 py-2 border-b border-white/5">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="flex flex-wrap justify-between items-center text-[10px] font-bold tracking-widest uppercase">
                <!-- Location -->
                <div class="flex items-center space-x-6">
                    <div class="flex items-center gap-2">
                        <i class="fas fa-map-marker-alt text-brand-primary"></i>
                        <span>Demo Office, Financial District</span>
                    </div>
                </div>

                <!-- Phone & Email -->
                <div class="flex items-center space-x-6 ml-auto sm:ml-0">
                    <a href="#" class="flex items-center gap-2 hover:text-brand-primary transition-colors">
                        <i class="fas fa-phone-alt text-brand-primary"></i>
                        <span>+250 000 000 000</span>
                    </a>
                    <a href="mailto:hello@moneytap.rw" class="flex items-center gap-2 hover:text-brand-primary transition-colors lowercase tracking-normal">
                        <i class="fas fa-envelope text-brand-primary"></i>
                        <span>hello@moneytap.rw</span>
                    </a>
                </div>
            </div>
        </div>
    </div>

    <!-- Main Navigation Bar -->
    <div class="glass h-20 transition-all duration-300" id="main-nav">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 h-full">
            <div class="flex justify-between items-center h-full">
                <!-- Logo -->
                <div class="flex-shrink-0">
                    <a href="index.php" class="flex items-center space-x-2">
                        <div class="w-10 h-10 brand-gradient rounded-xl flex items-center justify-center text-brand-dark shadow-lg shadow-brand-primary/20">
                            <i class="fas fa-bolt text-xl"></i>
                        </div>
                        <div class="flex flex-col">
                            <span class="text-white font-black text-xl leading-none tracking-tighter uppercase">Money<span class="text-brand-primary">Tap</span></span>
                            <span class="text-[8px] text-neutral-body font-bold tracking-[0.4em] uppercase mt-1 opacity-60">Instant Capital</span>
                        </div>
                    </a>
                </div>

                <!-- Nav Links -->
                <div class="hidden md:flex items-center space-x-1">
                    <a href="index.php" class="px-5 py-2 rounded-xl <?php echo $currentPage == 'index.php' ? 'text-brand-primary bg-brand-primary/5' : 'text-neutral-body hover:text-white hover:bg-white/5'; ?> font-bold text-[11px] uppercase tracking-widest transition-all">Home</a>
                    <a href="services.php" class="px-5 py-2 rounded-xl <?php echo $currentPage == 'services.php' ? 'text-brand-primary bg-brand-primary/5' : 'text-neutral-body hover:text-white hover:bg-white/5'; ?> font-bold text-[11px] uppercase tracking-widest transition-all">Services</a>
                    <a href="requirements.php" class="px-5 py-2 rounded-xl <?php echo $currentPage == 'requirements.php' ? 'text-brand-primary bg-brand-primary/5' : 'text-neutral-body hover:text-white hover:bg-white/5'; ?> font-bold text-[11px] uppercase tracking-widest transition-all">Requirements</a>
                    <a href="team.php" class="px-5 py-2 rounded-xl <?php echo $currentPage == 'team.php' ? 'text-brand-primary bg-brand-primary/5' : 'text-neutral-body hover:text-white hover:bg-white/5'; ?> font-bold text-[11px] uppercase tracking-widest transition-all">Team</a>
                    <a href="contact.php" class="px-5 py-2 rounded-xl <?php echo $currentPage == 'contact.php' ? 'text-brand-primary bg-brand-primary/5' : 'text-neutral-body hover:text-white hover:bg-white/5'; ?> font-bold text-[11px] uppercase tracking-widest transition-all">Contact</a>
                    
                    <div class="h-6 w-[1px] bg-white/10 mx-4"></div>

                    <a href="apply.php" class="btn-primary py-2 px-6 text-[10px]">Apply Now</a>
                    <a href="app.moneytap/login.php" target="_blank" class="p-3 text-neutral-body hover:text-brand-primary transition-colors" title="System Portal">
                        <i class="fas fa-user-shield text-sm"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
</nav>

<div class="h-[116px]"></div>

<script>
    window.addEventListener('scroll', function() {
        const mainNav = document.getElementById('main-nav');
        if (window.scrollY > 40) {
            mainNav.classList.add('h-16');
            mainNav.classList.remove('h-20');
        } else {
            mainNav.classList.add('h-20');
            mainNav.classList.remove('h-16');
        }
    });
</script>
