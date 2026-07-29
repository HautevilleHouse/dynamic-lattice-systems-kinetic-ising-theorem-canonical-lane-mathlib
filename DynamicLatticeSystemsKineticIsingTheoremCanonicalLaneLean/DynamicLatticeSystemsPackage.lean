import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean

structure DynamicLatticeSystemsPackage where
  latticeDimension : Nat
  spinType : Type
  interactionRange : Nat
  temperature : ℚ
  externalField : ℚ
  flipRate : Type
  hamiltonian : Type
  markovGenerator : Type
  detailedBalance : Prop
  ergodicity : Prop
  mixingTime : ℕ
  correlationFunction : Type
  universality : Prop

structure DynamicLatticeSystemsEvidence (D : DynamicLatticeSystemsPackage) where
  detailedBalanceClosed : D.detailedBalance
  ergodicityClosed : D.ergodicity
  universalityClosed : D.universality

def DynamicLatticeSystemsClosed (D : DynamicLatticeSystemsPackage) : Prop :=
  D.detailedBalance ∧ D.ergodicity ∧ D.universality

theorem dynamic_lattice_systems_closed_from_evidence
    (D : DynamicLatticeSystemsPackage) (E : DynamicLatticeSystemsEvidence D) :
    DynamicLatticeSystemsClosed D := by
  exact And.intro E.detailedBalanceClosed (And.intro E.ergodicityClosed E.universalityClosed)

end DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean
end HautevilleHouse