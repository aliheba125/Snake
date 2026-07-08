.class public Landroidx/appcompat/view/menu/pk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/appcompat/view/menu/kd0;

.field public b:Ljava/util/Map;

.field public final c:Landroidx/appcompat/view/menu/kd0$c;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/si;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/appcompat/view/menu/pk$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/pk$a;-><init>(Landroidx/appcompat/view/menu/pk;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/pk;->c:Landroidx/appcompat/view/menu/kd0$c;

    new-instance v1, Landroidx/appcompat/view/menu/kd0;

    const-string v2, "flutter/deferredcomponent"

    sget-object v3, Landroidx/appcompat/view/menu/qw0;->b:Landroidx/appcompat/view/menu/qw0;

    invoke-direct {v1, p1, v2, v3}, Landroidx/appcompat/view/menu/kd0;-><init>(Landroidx/appcompat/view/menu/i8;Ljava/lang/String;Landroidx/appcompat/view/menu/ld0;)V

    iput-object v1, p0, Landroidx/appcompat/view/menu/pk;->a:Landroidx/appcompat/view/menu/kd0;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/kd0;->e(Landroidx/appcompat/view/menu/kd0$c;)V

    invoke-static {}, Landroidx/appcompat/view/menu/pt;->e()Landroidx/appcompat/view/menu/pt;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt;->a()Landroidx/appcompat/view/menu/qk;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/pk;->b:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Landroidx/appcompat/view/menu/pk;)Landroidx/appcompat/view/menu/qk;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method
