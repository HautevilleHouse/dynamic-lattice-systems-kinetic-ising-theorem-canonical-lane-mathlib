import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean

structure DynamicLatticePackage where
  latticeType : Type u
  spinState : latticeType -> Prop
  hamiltonian : Type v
  isingInteraction : Prop
  kineticTransition : Prop
  reversibility : Prop

structure DynamicLatticeEvidence (D : DynamicLatticePackage) where
  hamiltonianClosed : D.hamiltonian
  isingInteractionClosed : D.isingInteraction
  kineticTransitionClosed : D.kineticTransition
  reversibilityClosed : D.reversibility

def DynamicLatticeClosed (D : DynamicLatticePackage) : Prop :=
  D.hamiltonian ∧ D.isingInteraction ∧ D.kineticTransition ∧ D.reversibility

theorem dynamic_lattice_closed_from_evidence (D : DynamicLatticePackage) (E : DynamicLatticeEvidence D) : DynamicLatticeClosed D := by
  exact And.intro E.hamiltonianClosed (And.intro E.isingInteractionClosed (And.intro E.kineticTransitionClosed E.reversibilityClosed))

end DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean
end HautevilleHouse