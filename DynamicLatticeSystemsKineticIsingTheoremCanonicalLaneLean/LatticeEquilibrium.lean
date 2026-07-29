import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean.KineticEvolution

namespace HautevilleHouse
namespace DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean

structure LatticeEquilibriumPackage where
  equilibriumMeasure : Type u
  gibbsMeasure : Prop
  phaseTransition : Prop
  criticalTemperature : ℝ
  susceptibility : ℝ

def LatticeEquilibriumClosed (L : LatticeEquilibriumPackage) : Prop :=
  L.gibbsMeasure ∧ L.phaseTransition

structure LatticeEquilibriumEvidence (L : LatticeEquilibriumPackage) where
  gibbsMeasureClosed : L.gibbsMeasure
  phaseTransitionClosed : L.phaseTransition

theorem lattice_equilibrium_closed_from_evidence (L : LatticeEquilibriumPackage) (E : LatticeEquilibriumEvidence L) :
    LatticeEquilibriumClosed L := by
  exact And.intro E.gibbsMeasureClosed E.phaseTransitionClosed

end DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean
end HautevilleHouse