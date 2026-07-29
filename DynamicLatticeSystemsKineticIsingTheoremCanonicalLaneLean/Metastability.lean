import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean

structure MetastabilityPackage where
  nucleationRate : Type u
  criticalDroplet : Type v
  lifetimeEstimates : Prop
  pathLargeDeviations : Prop
  bottleneckEnergy : Prop

structure MetastabilityEvidence (M : MetastabilityPackage) where
  nucleationRateClosed : M.nucleationRate
  criticalDropletClosed : M.criticalDroplet
  lifetimeEstimatesClosed : M.lifetimeEstimates
  pathLargeDeviationsClosed : M.pathLargeDeviations
  bottleneckEnergyClosed : M.bottleneckEnergy

def MetastabilityClosed (M : MetastabilityPackage) : Prop :=
  M.nucleationRate ∧ M.criticalDroplet ∧ M.lifetimeEstimates ∧ M.pathLargeDeviations ∧ M.bottleneckEnergy

theorem metastability_closed_from_evidence (M : MetastabilityPackage) (E : MetastabilityEvidence M) : MetastabilityClosed M := by
  exact And.intro E.nucleationRateClosed (And.intro E.criticalDropletClosed (And.intro E.lifetimeEstimatesClosed (And.intro E.pathLargeDeviationsClosed E.bottleneckEnergyClosed)))

end DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean
end HautevilleHouse