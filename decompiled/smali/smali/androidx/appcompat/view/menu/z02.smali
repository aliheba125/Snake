.class public final Landroidx/appcompat/view/menu/z02;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Landroidx/appcompat/view/menu/hm1;

.field public final synthetic n:Ljava/lang/String;

.field public final synthetic o:Ljava/lang/String;

.field public final synthetic p:Z

.field public final synthetic q:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Landroidx/appcompat/view/menu/hm1;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/z02;->q:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iput-object p2, p0, Landroidx/appcompat/view/menu/z02;->m:Landroidx/appcompat/view/menu/hm1;

    iput-object p3, p0, Landroidx/appcompat/view/menu/z02;->n:Ljava/lang/String;

    iput-object p4, p0, Landroidx/appcompat/view/menu/z02;->o:Ljava/lang/String;

    iput-boolean p5, p0, Landroidx/appcompat/view/menu/z02;->p:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/view/menu/z02;->q:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->J()Landroidx/appcompat/view/menu/h42;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/z02;->m:Landroidx/appcompat/view/menu/hm1;

    iget-object v2, p0, Landroidx/appcompat/view/menu/z02;->n:Ljava/lang/String;

    iget-object v3, p0, Landroidx/appcompat/view/menu/z02;->o:Ljava/lang/String;

    iget-boolean v4, p0, Landroidx/appcompat/view/menu/z02;->p:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/appcompat/view/menu/h42;->I(Landroidx/appcompat/view/menu/hm1;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
