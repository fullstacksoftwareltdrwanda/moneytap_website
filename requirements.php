<?php include 'includes/head.php'; ?>
<?php include 'includes/navbar.php'; ?>

<!-- Header -->
<section class="py-32 relative overflow-hidden">
    <div class="absolute inset-0 bg-brand-gradient opacity-10"></div>
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 text-center relative z-10">
        <h1 class="text-5xl md:text-8xl font-black text-white tracking-tighter mb-6 uppercase italic">Compliance <span class="text-brand-primary">Protocol</span></h1>
        <p class="text-neutral-body text-xl max-w-2xl mx-auto font-medium">Standardized documentation required for ecosystem entry.</p>
    </div>
</section>

<!-- Requirements Section -->
<section class="py-24 max-w-7xl mx-auto px-4">
    <div class="grid grid-cols-1 lg:grid-cols-2 gap-12">
        
        <!-- Mandatory Documents -->
        <div class="glass p-12 rounded-[3rem] border-t-4 border-brand-primary shadow-2xl relative overflow-hidden">
            <div class="absolute top-0 right-0 p-8 opacity-5 text-4xl font-black uppercase tracking-widest leading-none rotate-90 translate-x-12">CORE</div>
            <h3 class="text-3xl font-black text-white mb-8 tracking-tighter italic uppercase">01. Identity Matrix</h3>
            <ul class="space-y-4 font-bold text-xs uppercase tracking-widest">
                <li class="p-6 bg-white/5 border border-white/5 rounded-2xl flex items-center gap-4 text-neutral-body hover:border-brand-primary/30 transition-colors">
                    <i class="fas fa-fingerprint text-brand-primary"></i>
                    <span>Digital Passport / National ID</span>
                </li>
                <li class="p-6 bg-white/5 border border-white/5 rounded-2xl flex items-center gap-4 text-neutral-body hover:border-brand-primary/30 transition-colors">
                    <i class="fas fa-portrait text-brand-primary"></i>
                    <span>Biometric Photo Session</span>
                </li>
                <li class="p-6 bg-white/5 border border-white/5 rounded-2xl flex items-center gap-4 text-neutral-body hover:border-brand-primary/30 transition-colors">
                    <i class="fas fa-file-invoice text-brand-primary"></i>
                    <span>Civil Status Verification</span>
                </li>
            </ul>
        </div>

        <!-- Collateral & Security -->
        <div class="glass p-12 rounded-[3rem] border-t-4 border-brand-secondary shadow-2xl relative overflow-hidden">
            <h3 class="text-3xl font-black text-white mb-8 tracking-tighter italic uppercase">02. Asset Backing</h3>
            <p class="text-neutral-body text-xs mb-10 leading-relaxed font-black opacity-50 uppercase tracking-widest">All physical assets must be registered at our Demo validation center.</p>
            <div class="space-y-6">
                <!-- House -->
                <div class="p-8 bg-white/5 rounded-3xl border border-white/5">
                    <h4 class="text-[10px] font-black text-brand-secondary uppercase tracking-[0.4em] mb-4 italic">Real Estate</h4>
                    <p class="text-sm text-white font-black"><i class="fas fa-house-user text-brand-secondary mr-3"></i> Valid Land Title Certificate</p>
                    <p class="text-[9px] font-black text-neutral-body mt-3 uppercase tracking-widest opacity-40">Digital verification required via RLM system</p>
                </div>
            </div>
        </div>

        <!-- Employment requirements -->
        <div class="glass p-12 rounded-[3rem] border-t-4 border-brand-primary shadow-2xl">
            <h3 class="text-3xl font-black text-white mb-8 tracking-tighter italic uppercase">03. Source of Income</h3>
            <div class="space-y-4 font-bold text-xs uppercase tracking-widest">
                <li class="p-6 bg-brand-primary/5 border border-brand-primary/10 rounded-2xl flex items-center gap-4 text-neutral-body">
                    <i class="fas fa-briefcase text-brand-primary"></i>
                    <span>Professional Engagement Contract</span>
                </li>
                <li class="p-6 bg-brand-primary/5 border border-brand-primary/10 rounded-2xl flex items-center gap-4 text-neutral-body">
                    <i class="fas fa-stream text-brand-primary"></i>
                    <span>Financial Stream Registry (3 Months)</span>
                </li>
            </div>
        </div>

        <!-- Business requirements -->
        <div class="glass p-12 rounded-[3rem] border-t-4 border-white/10 shadow-2xl">
            <h3 class="text-3xl font-black text-white mb-8 tracking-tighter italic uppercase">04. Corporate Entities</h3>
            <div class="space-y-4 font-bold text-xs uppercase tracking-widest">
                <li class="p-6 bg-white/5 border border-white/5 rounded-2xl flex items-center gap-4 text-neutral-body">
                    <i class="fas fa-sitemap text-white/40"></i>
                    <span>Entity Registration DNA (RDB)</span>
                </li>
                <li class="p-6 bg-white/5 border border-white/5 rounded-2xl flex items-center gap-4 text-neutral-body">
                    <i class="fas fa-chart-pie text-white/40"></i>
                    <span>Operational P&L Statements</span>
                </li>
            </div>
        </div>

    </div>
</section>

<?php include 'includes/bottom_nav.php'; ?>
<?php include 'includes/footer.php'; ?>
