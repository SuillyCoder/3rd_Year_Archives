import numpy as np
import matplotlib.pyplot as plt

# Define time axis
t = np.linspace(-6, 10, 2000)

# New base signal x(t) - a different piecewise signal
def x(t):
    """
    Base signal: Piecewise function
    x(t) = 0,           t < -2
           t + 2,       -2 ≤ t < -1
           1,           -1 ≤ t < 1
           -0.5t + 1.5, 1 ≤ t < 3
           0,           t ≥ 3
    """
    result = np.zeros_like(t)
    
    # t < -2: constant at 0
    result[t < -2] = 0
    
    # -2 ≤ t < -1: ramp up from 0 to 1
    mask1 = (t >= -2) & (t < -1)
    result[mask1] = t[mask1] + 2
    
    # -1 ≤ t < 1: constant at 1
    mask2 = (t >= -1) & (t < 1)
    result[mask2] = 1
    
    # 1 ≤ t < 3: ramp down from 1 to 0
    mask3 = (t >= 1) & (t < 3)
    result[mask3] = -0.5*t[mask3] + 1.5
    
    # t ≥ 3: constant at 0
    result[t >= 3] = 0
    
    return result

# ============================================
# SIGNAL 1: Shift + Reversal
# y1(t) = x(-t - 2) = x(-(t + 2))
# Operations: Shift LEFT by 2, then reverse
# ============================================
def signal_1(t):
    return x(-t - 2)

# ============================================
# SIGNAL 2: Scaling + Shift
# y2(t) = x(3t + 3) = x(3(t + 1))
# Operations: Shift LEFT by 1, then compress by 3
# ============================================
def signal_2(t):
    return x(3*t + 3)

# ============================================
# SIGNAL 3: All three - Reversal + Shift + Scaling
# y3(t) = x(-2t + 4) = x(-2(t - 2))
# Operations: Shift RIGHT by 2, compress by 2, then reverse
# ============================================
def signal_3(t):
    return x(-2*t + 4)

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
axes[0].set_xlim(-6, 10)
axes[0].set_ylim(-0.5, 2)

# Plot Signal 1
axes[1].plot(t, signal_1(t), 'r-', linewidth=2.5)
axes[1].grid(True, alpha=0.3)
axes[1].set_title('Signal 1: y₁(t) = x(-t - 2) = x(-(t + 2))\n[Shift LEFT by 2 + Reversal]', 
                  fontsize=14, fontweight='bold', color='darkred')
axes[1].set_xlabel('t', fontsize=11)
axes[1].set_ylabel('y₁(t)', fontsize=11)
axes[1].axhline(y=0, color='k', linewidth=0.8)
axes[1].axvline(x=0, color='k', linewidth=0.8)
axes[1].set_xlim(-6, 10)
axes[1].set_ylim(-0.5, 2)

# Plot Signal 2
axes[2].plot(t, signal_2(t), 'g-', linewidth=2.5)
axes[2].grid(True, alpha=0.3)
axes[2].set_title('Signal 2: y₂(t) = x(3t + 3) = x(3(t + 1))\n[Shift LEFT by 1 + Time Compression by 3]', 
                  fontsize=14, fontweight='bold', color='darkgreen')
axes[2].set_xlabel('t', fontsize=11)
axes[2].set_ylabel('y₂(t)', fontsize=11)
axes[2].axhline(y=0, color='k', linewidth=0.8)
axes[2].axvline(x=0, color='k', linewidth=0.8)
axes[2].set_xlim(-6, 10)
axes[2].set_ylim(-0.5, 2)

# Plot Signal 3
axes[3].plot(t, signal_3(t), 'm-', linewidth=2.5)
axes[3].grid(True, alpha=0.3)
axes[3].set_title('Signal 3: y₃(t) = x(-2t + 4) = x(-2(t - 2))\n[Shift RIGHT by 2 + Time Compression by 2 + Reversal]', 
                  fontsize=14, fontweight='bold', color='purple')
axes[3].set_xlabel('t', fontsize=11)
axes[3].set_ylabel('y₃(t)', fontsize=11)
axes[3].axhline(y=0, color='k', linewidth=0.8)
axes[3].axvline(x=0, color='k', linewidth=0.8)
axes[3].set_xlim(-6, 10)
axes[3].set_ylim(-0.5, 2)

plt.tight_layout()
plt.show()

# ============================================
# PRACTICE EXERCISES
# ============================================
print("="*70)
print("PRACTICE EXERCISES - Set 2: Sketch these transformations manually:")
print("="*70)
print("\nGiven the original signal x(t) shown above, sketch:")
print("\n1. y₁(t) = x(-t - 2)")
print("   Step-by-step:")
print("   • Factor: x(-(t + 2))")
print("   • Start with x(t)")
print("   • Shift LEFT by 2: x(t + 2)")
print("   • Reverse (flip around vertical axis): x(-(t + 2))")
print("   • Critical points: x at -2, -1, 1, 3 → y₁ at 0, -1, -3, -5")
print("   ")
print("2. y₂(t) = x(3t + 3)")
print("   Step-by-step:")
print("   • Factor: x(3(t + 1))")
print("   • Start with x(t)")
print("   • Shift LEFT by 1: x(t + 1)")
print("   • Compress by 3 (make faster): x(3(t + 1))")
print("   • Critical points: x at -2, -1, 1, 3 → y₂ at -1, -2/3, 0, 2/3")
print("   ")
print("3. y₃(t) = x(-2t + 4)")
print("   Step-by-step:")
print("   • Factor: x(-2(t - 2))")
print("   • Start with x(t)")
print("   • Shift RIGHT by 2: x(t - 2)")
print("   • Compress by 2 (make faster): x(2(t - 2))")
print("   • Reverse: x(-2(t - 2))")
print("   • Critical points: x at -2, -1, 1, 3 → y₃ at 3, 2.5, 1.5, 0.5")
print("\n" + "="*70)
print("TRANSFORMATION STRATEGY:")
print("="*70)
print("For x(at + b):")
print("  Method 1: Factor as x(a(t + b/a))")
print("    → Shift by -b/a FIRST, then scale by a")
print("  ")
print("  Method 2: Work inside-out")
print("    → Apply operations in order: shift, scale, reverse")
print("  ")
print("Key Points to Track:")
print("  • Start/End points of each segment")
print("  • Slopes of ramps (multiply by |a| for scaling)")
print("  • Sign of 'a' determines if signal is reversed")
print("="*70)
print("\nTIP: Always identify critical transition points in x(t),")
print("     then transform those t-values using the given operation!")
print("="*70)