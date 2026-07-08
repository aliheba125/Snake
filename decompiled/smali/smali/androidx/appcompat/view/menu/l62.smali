.class public final Landroidx/appcompat/view/menu/l62;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Landroidx/appcompat/view/menu/d62;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/d62;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/l62;->m:Landroidx/appcompat/view/menu/d62;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/l62;->m:Landroidx/appcompat/view/menu/d62;

    iget-object v0, v0, Landroidx/appcompat/view/menu/d62;->n:Landroidx/appcompat/view/menu/h42;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Landroidx/appcompat/view/menu/l62;->m:Landroidx/appcompat/view/menu/d62;

    iget-object v2, v2, Landroidx/appcompat/view/menu/d62;->n:Landroidx/appcompat/view/menu/h42;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/fz1;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/h42;->M(Landroidx/appcompat/view/menu/h42;Landroid/content/ComponentName;)V

    return-void
.end method
