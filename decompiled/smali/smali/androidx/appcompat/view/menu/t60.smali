.class public Landroidx/appcompat/view/menu/t60;
.super Landroidx/appcompat/view/menu/b70;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/kd;


# instance fields
.field public final o:Z


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/q60;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/b70;-><init>(Z)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/b70;->f0(Landroidx/appcompat/view/menu/q60;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/t60;->H0()Z

    move-result p1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/t60;->o:Z

    return-void
.end method


# virtual methods
.method public final H0()Z
    .locals 4

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/b70;->b0()Landroidx/appcompat/view/menu/jb;

    move-result-object v0

    instance-of v1, v0, Landroidx/appcompat/view/menu/kb;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/appcompat/view/menu/kb;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/z60;->x()Landroidx/appcompat/view/menu/b70;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/b70;->Y()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/b70;->b0()Landroidx/appcompat/view/menu/jb;

    move-result-object v0

    instance-of v3, v0, Landroidx/appcompat/view/menu/kb;

    if-eqz v3, :cond_3

    check-cast v0, Landroidx/appcompat/view/menu/kb;

    goto :goto_1

    :cond_3
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/z60;->x()Landroidx/appcompat/view/menu/b70;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_4
    :goto_2
    return v1
.end method

.method public Y()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/t60;->o:Z

    return v0
.end method

.method public Z()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
