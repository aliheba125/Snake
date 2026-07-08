.class public abstract Landroidx/appcompat/view/menu/ns0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/ns0$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroidx/appcompat/view/menu/ns0$a;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/i6$b;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/i6$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b()Landroidx/appcompat/view/menu/lo;
.end method

.method public abstract c()Landroidx/appcompat/view/menu/wo;
.end method

.method public d()[B
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ns0;->e()Landroidx/appcompat/view/menu/r11;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ns0;->c()Landroidx/appcompat/view/menu/wo;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/wo;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/appcompat/view/menu/r11;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public abstract e()Landroidx/appcompat/view/menu/r11;
.end method

.method public abstract f()Landroidx/appcompat/view/menu/d21;
.end method

.method public abstract g()Ljava/lang/String;
.end method
