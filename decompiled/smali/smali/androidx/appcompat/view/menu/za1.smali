.class public final Landroidx/appcompat/view/menu/za1;
.super Landroidx/appcompat/view/menu/m2$a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/m2$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Landroid/content/Context;Landroid/os/Looper;Landroidx/appcompat/view/menu/ac;Ljava/lang/Object;Landroidx/appcompat/view/menu/zx$a;Landroidx/appcompat/view/menu/zx$b;)Landroidx/appcompat/view/menu/m2$f;
    .locals 8

    check-cast p4, Landroidx/appcompat/view/menu/lu0;

    new-instance p4, Landroidx/appcompat/view/menu/ku0;

    const/4 v3, 0x1

    invoke-static {p3}, Landroidx/appcompat/view/menu/ku0;->l0(Landroidx/appcompat/view/menu/ac;)Landroid/os/Bundle;

    move-result-object v5

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Landroidx/appcompat/view/menu/ku0;-><init>(Landroid/content/Context;Landroid/os/Looper;ZLandroidx/appcompat/view/menu/ac;Landroid/os/Bundle;Landroidx/appcompat/view/menu/zx$a;Landroidx/appcompat/view/menu/zx$b;)V

    return-object p4
.end method
