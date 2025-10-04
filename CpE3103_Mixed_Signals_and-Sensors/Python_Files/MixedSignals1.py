import numpy as np
import matplotlib.pyplot as plt

# Define time axis
t = np.linspace(-5, 8, 2000)

# Original base signal x(t) - a piecewise signal
def x(t):
    """
    Base signal: Piecewise function
    x(t) = -1,        t < -1
           t,         -1 ≤ t < 0
           2,          0 ≤ t < 2
           -t + 4,     2 ≤ t < 4
           0,          t ≥ 4
    """
    result = np.zeros_like(t)
    
    # t < -1: constant at -1
    result[t < -1] = -1
    
    # -1 ≤ t < 0: ramp from -1 to 0
    mask1 = (t >= -1) & (t < 0)
    result[mask1] = t[mask1]
    
    # 0 ≤ t < 2: constant at 2
    mask2 = (t >= 0) & (t < 2)
    result[mask2] = 2
    
    # 2 ≤ t < 4: ramp down from 2 to 0
    mask3 = (t >= 2) & (t < 4)
    result[mask3] = -t[mask3] + 4
    
    # t ≥ 4: constant at 0
    result[t >= 4] = 0
    
    return result

# ============================================
# SIGNAL 1: Reversal + Shift
# y1(t) = x(-t + 3)
# Operations: x(-(t - 3)) → Reverse, then shift right by 3
# ============================================
def signal_1(t):
    return x(-t + 3)

# ============================================
# SIGNAL 2: Shift + Scaling
# y2(t) = x(2t - 4)
# Operations: x(2(t - 2)) → Shift right by 2, then compress by 2
# ============================================
def signal_2(t):
    return x(2*t - 4)

# ============================================
# SIGNAL 3: All three - Reversal + Shift + Scaling
# y3(t) = x(-0.5t + 2)
# Operations: x(-0.5(t - 4)) → Shift right by 4, expand by 2, then reverse
# ============================================
def signal_3(t):
    return x(-0.5*t + 2)

# Create the plots
fig, axes = plt.subplots(4, 1, figsize=(14, 12))

# Plot original signal
axes[0].plot(t, x(t), 'b-', linewidth=2.5)
axes[0].grid(True, alpha=0.3)
axes[0].set_title('Original Signal: x(t)', fontsize=14, fontweight='bold')
axes[0].set_xlabel('t', fontsize=11)
axes[0].set_ylabel('x(t)', fontsize=11)
axes[0].axhline(y=0, color='k', linewidth=0.8)
axes[0].axvline(x=0, color='k', linewidth=0.8)
axes[0].set_xlim(-5, 8)
axes[0].set_ylim(-2, 3)

# Plot Signal 1
axes[1].plot(t, signal_1(t), 'r-', linewidth=2.5)
axes[1].grid(True, alpha=0.3)
axes[1].set_title('Signal 1: y₁(t) = x(-t + 3) = x(-(t - 3))\n[Reversal + Shift Right by 3]', 
                  fontsize=14, fontweight='bold', color='darkred')
axes[1].set_xlabel('t', fontsize=11)
axes[1].set_ylabel('y₁(t)', fontsize=11)
axes[1].axhline(y=0, color='k', linewidth=0.8)
axes[1].axvline(x=0, color='k', linewidth=0.8)
axes[1].set_xlim(-5, 8)
axes[1].set_ylim(-2, 3)

# Plot Signal 2
axes[2].plot(t, signal_2(t), 'g-', linewidth=2.5)
axes[2].grid(True, alpha=0.3)
axes[2].set_title('Signal 2: y₂(t) = x(2t - 4) = x(2(t - 2))\n[Shift Right by 2 + Time Compression by 2]', 
                  fontsize=14, fontweight='bold', color='darkgreen')
axes[2].set_xlabel('t', fontsize=11)
axes[2].set_ylabel('y₂(t)', fontsize=11)
axes[2].axhline(y=0, color='k', linewidth=0.8)
axes[2].axvline(x=0, color='k', linewidth=0.8)
axes[2].set_xlim(-5, 8)
axes[2].set_ylim(-2, 3)

# Plot Signal 3
axes[3].plot(t, signal_3(t), 'm-', linewidth=2.5)
axes[3].grid(True, alpha=0.3)
axes[3].set_title('Signal 3: y₃(t) = x(-0.5t + 2) = x(-0.5(t - 4))\n[Shift Right by 4 + Time Expansion by 2 + Reversal]', 
                  fontsize=14, fontweight='bold', color='purple')
axes[3].set_xlabel('t', fontsize=11)
axes[3].set_ylabel('y₃(t)', fontsize=11)
axes[3].axhline(y=0, color='k', linewidth=0.8)
axes[3].axvline(x=0, color='k', linewidth=0.8)
axes[3].set_xlim(-5, 8)
axes[3].set_ylim(-2, 3)

plt.tight_layout()
plt.show()

# ============================================
# PRACTICE EXERCISES
# ============================================
print("="*70)
print("PRACTICE EXERCISES - Sketch these transformations manually:")
print("="*70)
print("\nGiven the original signal x(t) shown above, sketch:")
print("\n1. y₁(t) = x(-t + 3)")
print("   Step-by-step:")
print("   • Factor: x(-(t - 3))")
print("   • Start with x(t)")
print("   • Shift RIGHT by 3: x(t - 3)")
print("   • Reverse (flip around vertical axis): x(-(t - 3))")
print("   ")
print("2. y₂(t) = x(2t - 4)")
print("   Step-by-step:")
print("   • Factor: x(2(t - 2))")
print("   • Start with x(t)")
print("   • Shift RIGHT by 2: x(t - 2)")
print("   • Compress by 2 (make faster): x(2(t - 2))")
print("   ")
print("3. y₃(t) = x(-0.5t + 2)")
print("   Step-by-step:")
print("   • Factor: x(-0.5(t - 4))")
print("   • Start with x(t)")
print("   • Shift RIGHT by 4: x(t - 4)")
print("   • Expand by 2 (make slower): x(0.5(t - 4))")
print("   • Reverse: x(-0.5(t - 4))")
print("\n" + "="*70)
print("KEY TRANSFORMATION RULES:")
print("="*70)
print("• x(at) where |a| > 1: TIME COMPRESSION (signal becomes narrower/faster)")
print("• x(at) where 0 < |a| < 1: TIME EXPANSION (signal becomes wider/slower)")
print("• x(-t): TIME REVERSAL (flip horizontally around t=0)")
print("• x(t - t₀): SHIFT RIGHT by t₀ units (delay)")
print("• x(t + t₀): SHIFT LEFT by t₀ units (advance)")
print("\nTo decompose x(at + b):")
print("  1. Factor out 'a': x(a(t + b/a))")
print("  2. Identify shift: t₀ = -b/a")
print("  3. Order of operations: SHIFT first, then SCALE")
print("     (Or factor as x(at - c) and scale first, then shift by c)")
print("="*70)