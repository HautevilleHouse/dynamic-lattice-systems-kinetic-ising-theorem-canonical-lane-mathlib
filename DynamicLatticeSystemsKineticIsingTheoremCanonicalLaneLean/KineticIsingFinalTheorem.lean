import DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean.DynamicLatticeGateLemmas

namespace HautevilleHouse
namespace DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean

def KineticIsingConstrainedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem kinetic_ising_constrained_endgame (A : AdmissibleClass) :
    KineticIsingConstrainedClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean
end HautevilleHouse