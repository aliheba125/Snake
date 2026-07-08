.class public final synthetic Landroidx/appcompat/view/menu/aj0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Landroidx/appcompat/view/menu/bj0$a;

.field public final synthetic n:Lio/flutter/plugin/platform/a;

.field public final synthetic o:F

.field public final synthetic p:Landroidx/appcompat/view/menu/yi0$b;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/bj0$a;Lio/flutter/plugin/platform/a;FLandroidx/appcompat/view/menu/yi0$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/aj0;->m:Landroidx/appcompat/view/menu/bj0$a;

    iput p3, p0, Landroidx/appcompat/view/menu/aj0;->o:F

    iput-object p4, p0, Landroidx/appcompat/view/menu/aj0;->p:Landroidx/appcompat/view/menu/yi0$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/aj0;->m:Landroidx/appcompat/view/menu/bj0$a;

    iget-object v1, p0, Landroidx/appcompat/view/menu/aj0;->n:Lio/flutter/plugin/platform/a;

    iget v2, p0, Landroidx/appcompat/view/menu/aj0;->o:F

    iget-object v3, p0, Landroidx/appcompat/view/menu/aj0;->p:Landroidx/appcompat/view/menu/yi0$b;

    invoke-static {v0, v1, v2, v3}, Landroidx/appcompat/view/menu/bj0$a;->j(Landroidx/appcompat/view/menu/bj0$a;Lio/flutter/plugin/platform/a;FLandroidx/appcompat/view/menu/yi0$b;)V

    return-void
.end method
