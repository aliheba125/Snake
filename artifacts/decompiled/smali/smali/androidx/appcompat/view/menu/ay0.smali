.class public Landroidx/appcompat/view/menu/ay0;
.super Landroidx/appcompat/view/menu/mc0;
.source "SourceFile"

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field public B:Landroidx/appcompat/view/menu/mc0;

.field public C:Landroidx/appcompat/view/menu/qc0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/mc0;Landroidx/appcompat/view/menu/qc0;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/mc0;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroidx/appcompat/view/menu/ay0;->B:Landroidx/appcompat/view/menu/mc0;

    iput-object p3, p0, Landroidx/appcompat/view/menu/ay0;->C:Landroidx/appcompat/view/menu/qc0;

    return-void
.end method


# virtual methods
.method public C()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ay0;->B:Landroidx/appcompat/view/menu/mc0;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mc0;->C()Z

    move-result v0

    return v0
.end method

.method public D()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ay0;->B:Landroidx/appcompat/view/menu/mc0;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mc0;->D()Z

    move-result v0

    return v0
.end method

.method public E()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ay0;->B:Landroidx/appcompat/view/menu/mc0;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mc0;->E()Z

    move-result v0

    return v0
.end method

.method public M(Landroidx/appcompat/view/menu/mc0$a;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ay0;->B:Landroidx/appcompat/view/menu/mc0;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/mc0;->M(Landroidx/appcompat/view/menu/mc0$a;)V

    return-void
.end method

.method public X()Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ay0;->B:Landroidx/appcompat/view/menu/mc0;

    return-object v0
.end method

.method public e(Landroidx/appcompat/view/menu/qc0;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ay0;->B:Landroidx/appcompat/view/menu/mc0;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/mc0;->e(Landroidx/appcompat/view/menu/qc0;)Z

    move-result p1

    return p1
.end method

.method public g(Landroidx/appcompat/view/menu/mc0;Landroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/mc0;->g(Landroidx/appcompat/view/menu/mc0;Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ay0;->B:Landroidx/appcompat/view/menu/mc0;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/mc0;->g(Landroidx/appcompat/view/menu/mc0;Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

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

.method public getItem()Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ay0;->C:Landroidx/appcompat/view/menu/qc0;

    return-object v0
.end method

.method public j(Landroidx/appcompat/view/menu/qc0;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ay0;->B:Landroidx/appcompat/view/menu/mc0;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/mc0;->j(Landroidx/appcompat/view/menu/qc0;)Z

    move-result p1

    return p1
.end method

.method public setGroupDividerEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ay0;->B:Landroidx/appcompat/view/menu/mc0;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/mc0;->setGroupDividerEnabled(Z)V

    return-void
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/mc0;->O(I)Landroidx/appcompat/view/menu/mc0;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/mc0;->P(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/view/menu/mc0;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/mc0;->R(I)Landroidx/appcompat/view/menu/mc0;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/mc0;->S(Ljava/lang/CharSequence;)Landroidx/appcompat/view/menu/mc0;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/mc0;->T(Landroid/view/View;)Landroidx/appcompat/view/menu/mc0;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ay0;->C:Landroidx/appcompat/view/menu/qc0;

    .line 2
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/qc0;->setIcon(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ay0;->C:Landroidx/appcompat/view/menu/qc0;

    .line 1
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/qc0;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setQwertyMode(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ay0;->B:Landroidx/appcompat/view/menu/mc0;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/mc0;->setQwertyMode(Z)V

    return-void
.end method

.method public z()Landroidx/appcompat/view/menu/mc0;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ay0;->B:Landroidx/appcompat/view/menu/mc0;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mc0;->z()Landroidx/appcompat/view/menu/mc0;

    move-result-object v0

    return-object v0
.end method
