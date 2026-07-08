.class public Landroidx/appcompat/view/menu/l60;
.super Landroidx/appcompat/view/menu/k60;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/l60$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/k60;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Landroidx/appcompat/view/menu/qn0;
    .locals 1

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/l60;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/pi0;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/pi0;-><init>()V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroidx/appcompat/view/menu/gi0;->b()Landroidx/appcompat/view/menu/qn0;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final c(I)Z
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/l60$a;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
