.class public final Lcom/google/android/gms/measurement/AppMeasurementReceiver;
.super Landroidx/appcompat/view/menu/r71;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/nv1$a;


# instance fields
.field public c:Landroidx/appcompat/view/menu/nv1;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/r71;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/r71;->c(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->c:Landroidx/appcompat/view/menu/nv1;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/nv1;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/nv1;-><init>(Landroidx/appcompat/view/menu/nv1$a;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->c:Landroidx/appcompat/view/menu/nv1;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->c:Landroidx/appcompat/view/menu/nv1;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/nv1;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
