import canonicalLaneMathlib.AdmissibleClass
import DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean.BridgeLemmas
import DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean

def ConstrainedKineticIsingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_kinetic_ising_endgame (A : AdmissibleClass) :
    ConstrainedKineticIsingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean
end HautevilleHouse