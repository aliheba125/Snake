.class public final Landroidx/appcompat/view/menu/o92;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Landroidx/appcompat/view/menu/hm1;

.field public final synthetic n:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Landroidx/appcompat/view/menu/hm1;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/o92;->n:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iput-object p2, p0, Landroidx/appcompat/view/menu/o92;->m:Landroidx/appcompat/view/menu/hm1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/o92;->n:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->L()Landroidx/appcompat/view/menu/x92;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/o92;->m:Landroidx/appcompat/view/menu/hm1;

    iget-object v2, p0, Landroidx/appcompat/view/menu/o92;->n:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/cx1;->o()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/x92;->T(Landroidx/appcompat/view/menu/hm1;Z)V

    return-void
.end method
