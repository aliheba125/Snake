.class public final Landroidx/appcompat/view/menu/qc0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/ky0;


# instance fields
.field public A:Landroid/view/View;

.field public B:Landroid/view/MenuItem$OnActionExpandListener;

.field public C:Z

.field public D:Landroid/view/ContextMenu$ContextMenuInfo;

.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public e:Ljava/lang/CharSequence;

.field public f:Ljava/lang/CharSequence;

.field public g:Landroid/content/Intent;

.field public h:C

.field public i:I

.field public j:C

.field public k:I

.field public l:Landroid/graphics/drawable/Drawable;

.field public m:I

.field public n:Landroidx/appcompat/view/menu/mc0;

.field public o:Landroidx/appcompat/view/menu/ay0;

.field public p:Ljava/lang/Runnable;

.field public q:Landroid/view/MenuItem$OnMenuItemClickListener;

.field public r:Ljava/lang/CharSequence;

.field public s:Ljava/lang/CharSequence;

.field public t:Landroid/content/res/ColorStateList;

.field public u:Landroid/graphics/PorterDuff$Mode;

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/mc0;IIIILjava/lang/CharSequence;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    iput v0, p0, Landroidx/appcompat/view/menu/qc0;->i:I

    iput v0, p0, Landroidx/appcompat/view/menu/qc0;->k:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/view/menu/qc0;->m:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/appcompat/view/menu/qc0;->t:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Landroidx/appcompat/view/menu/qc0;->u:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/qc0;->v:Z

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/qc0;->w:Z

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/qc0;->x:Z

    const/16 v1, 0x10

    iput v1, p0, Landroidx/appcompat/view/menu/qc0;->y:I

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/qc0;->C:Z

    iput-object p1, p0, Landroidx/appcompat/view/menu/qc0;->n:Landroidx/appcompat/view/menu/mc0;

    iput p3, p0, Landroidx/appcompat/view/menu/qc0;->a:I

    iput p2, p0, Landroidx/appcompat/view/menu/qc0;->b:I

    iput p4, p0, Landroidx/appcompat/view/menu/qc0;->c:I

    iput p5, p0, Landroidx/appcompat/view/menu/qc0;->d:I

    iput-object p6, p0, Landroidx/appcompat/view/menu/qc0;->e:Ljava/lang/CharSequence;

    iput p7, p0, Landroidx/appcompat/view/menu/qc0;->z:I

    return-void
.end method

.method public static b(Ljava/lang/StringBuilder;IILjava/lang/String;)V
    .locals 0

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public A()Z
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/qc0;->z:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/qc0;->n:Landroidx/appcompat/view/menu/mc0;

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/mc0;->F(Landroidx/appcompat/view/menu/qc0;)V

    return-void
.end method

.method public final c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/qc0;->x:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/qc0;->v:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/qc0;->w:Z

    if-eqz v0, :cond_3

    :cond_0
    invoke-static {p1}, Landroidx/appcompat/view/menu/om;->l(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/qc0;->v:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/qc0;->t:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/om;->i(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/qc0;->w:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/view/menu/qc0;->u:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/om;->j(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/qc0;->x:Z

    :cond_3
    return-object p1
.end method

.method public collapseActionView()Z
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/qc0;->z:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/qc0;->A:Landroid/view/View;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/qc0;->B:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v0, :cond_3

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/qc0;->n:Landroidx/appcompat/view/menu/mc0;

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/mc0;->e(Landroidx/appcompat/view/menu/qc0;)Z

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/qc0;->d:I

    return v0
.end method

.method public e()C
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/qc0;->n:Landroidx/appcompat/view/menu/mc0;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mc0;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-char v0, p0, Landroidx/appcompat/view/menu/qc0;->j:C

    goto :goto_0

    :cond_0
    iget-char v0, p0, Landroidx/appcompat/view/menu/qc0;->h:C

    :goto_0
    return v0
.end method

.method public expandActionView()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/qc0;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/qc0;->B:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/qc0;->n:Landroidx/appcompat/view/menu/mc0;

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/mc0;->j(Landroidx/appcompat/view/menu/qc0;)Z

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/qc0;->e()C

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/qc0;->n:Landroidx/appcompat/view/menu/mc0;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/mc0;->s()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroidx/appcompat/view/menu/qc0;->n:Landroidx/appcompat/view/menu/mc0;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/mc0;->s()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v3

    if-eqz v3, :cond_1

    sget v3, Landroidx/appcompat/view/menu/cn0;->k:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v3, p0, Landroidx/appcompat/view/menu/qc0;->n:Landroidx/appcompat/view/menu/mc0;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/mc0;->D()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroidx/appcompat/view/menu/qc0;->k:I

    goto :goto_0

    :cond_2
    iget v3, p0, Landroidx/appcompat/view/menu/qc0;->i:I

    :goto_0
    sget v4, Landroidx/appcompat/view/menu/cn0;->g:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x10000

    invoke-static {v2, v3, v5, v4}, Landroidx/appcompat/view/menu/qc0;->b(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    sget v4, Landroidx/appcompat/view/menu/cn0;->c:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1000

    invoke-static {v2, v3, v5, v4}, Landroidx/appcompat/view/menu/qc0;->b(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    sget v4, Landroidx/appcompat/view/menu/cn0;->b:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v2, v3, v5, v4}, Landroidx/appcompat/view/menu/qc0;->b(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    sget v4, Landroidx/appcompat/view/menu/cn0;->h:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v2, v3, v5, v4}, Landroidx/appcompat/view/menu/qc0;->b(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    sget v4, Landroidx/appcompat/view/menu/cn0;->j:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-static {v2, v3, v5, v4}, Landroidx/appcompat/view/menu/qc0;->b(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    sget v4, Landroidx/appcompat/view/menu/cn0;->f:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x8

    invoke-static {v2, v3, v5, v4}, Landroidx/appcompat/view/menu/qc0;->b(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    if-eq v0, v5, :cond_5

    const/16 v3, 0xa

    if-eq v0, v3, :cond_4

    const/16 v3, 0x20

    if-eq v0, v3, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    sget v0, Landroidx/appcompat/view/menu/cn0;->i:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    sget v0, Landroidx/appcompat/view/menu/cn0;->e:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    sget v0, Landroidx/appcompat/view/menu/cn0;->d:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Landroidx/appcompat/view/menu/y0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is not supported, use MenuItemCompat.getActionProvider()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/qc0;->A:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlphabeticModifiers()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/qc0;->k:I

    return v0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    iget-char v0, p0, Landroidx/appcompat/view/menu/qc0;->j:C

    return v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/qc0;->r:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/qc0;->b:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/qc0;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/qc0;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Landroidx/appcompat/view/menu/qc0;->m:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/qc0;->n:Landroidx/appcompat/view/menu/mc0;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mc0;->s()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroidx/appcompat/view/menu/qc0;->m:I

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/i3;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, p0, Landroidx/appcompat/view/menu/qc0;->m:I

    iput-object v0, p0, Landroidx/appcompat/view/menu/qc0;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/qc0;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/qc0;->t:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/qc0;->u:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/qc0;->g:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/qc0;->a:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/qc0;->D:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getNumericModifiers()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/qc0;->i:I

    return v0
.end method

.method public getNumericShortcut()C
    .locals 1

    iget-char v0, p0, Landroidx/appcompat/view/menu/qc0;->h:C

    return v0
.end method

.method public getOrder()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/qc0;->c:I

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/qc0;->o:Landroidx/appcompat/view/menu/ay0;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/qc0;->e:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/qc0;->f:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/qc0;->e:Ljava/lang/CharSequence;

    :goto_0
    return-object v0
.end method

.method public getTooltipText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/qc0;->s:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public h(Landroidx/appcompat/view/menu/wc0$a;)Ljava/lang/CharSequence;
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/appcompat/view/menu/wc0$a;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/qc0;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/qc0;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public hasSubMenu()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/qc0;->o:Landroidx/appcompat/view/menu/ay0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()Z
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/qc0;->z:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/qc0;->A:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isActionViewExpanded()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/qc0;->C:Z

    return v0
.end method

.method public isCheckable()Z
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/qc0;->y:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isChecked()Z
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/qc0;->y:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/qc0;->y:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/qc0;->y:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()Z
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/qc0;->q:Landroid/view/MenuItem$OnMenuItemClickListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/qc0;->n:Landroidx/appcompat/view/menu/mc0;

    invoke-virtual {v0, v0, p0}, Landroidx/appcompat/view/menu/mc0;->g(Landroidx/appcompat/view/menu/mc0;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/qc0;->p:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return v1

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/view/menu/qc0;->g:Landroid/content/Intent;

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/qc0;->n:Landroidx/appcompat/view/menu/mc0;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mc0;->s()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Landroidx/appcompat/view/menu/qc0;->g:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public k()Z
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/qc0;->y:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()Z
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/qc0;->y:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()Z
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/qc0;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public n()Z
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/qc0;->z:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o(I)Landroidx/appcompat/view/menu/ky0;
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/qc0;->n:Landroidx/appcompat/view/menu/mc0;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mc0;->s()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/qc0;->p(Landroid/view/View;)Landroidx/appcompat/view/menu/ky0;

    return-object p0
.end method

.method public p(Landroid/view/View;)Landroidx/appcompat/view/menu/ky0;
    .locals 2

    iput-object p1, p0, Landroidx/appcompat/view/menu/qc0;->A:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/appcompat/view/menu/qc0;->a:I

    if-lez v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/qc0;->n:Landroidx/appcompat/view/menu/mc0;

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/mc0;->F(Landroidx/appcompat/view/menu/qc0;)V

    return-object p0
.end method

.method public q(Z)V
    .locals 1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/qc0;->C:Z

    iget-object p1, p0, Landroidx/appcompat/view/menu/qc0;->n:Landroidx/appcompat/view/menu/mc0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/mc0;->H(Z)V

    return-void
.end method

.method public r(Z)V
    .locals 3

    iget v0, p0, Landroidx/appcompat/view/menu/qc0;->y:I

    and-int/lit8 v1, v0, -0x3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    or-int/2addr p1, v1

    iput p1, p0, Landroidx/appcompat/view/menu/qc0;->y:I

    if-eq v0, p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/view/menu/qc0;->n:Landroidx/appcompat/view/menu/mc0;

    invoke-virtual {p1, v2}, Landroidx/appcompat/view/menu/mc0;->H(Z)V

    :cond_1
    return-void
.end method

.method public s(Z)V
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/qc0;->y:I

    and-int/lit8 v0, v0, -0x5

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, v0

    iput p1, p0, Landroidx/appcompat/view/menu/qc0;->y:I

    return-void
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This is not supported, use MenuItemCompat.setActionProvider()"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic setActionView(I)Landroid/view/MenuItem;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/qc0;->o(I)Landroidx/appcompat/view/menu/ky0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/qc0;->p(Landroid/view/View;)Landroidx/appcompat/view/menu/ky0;

    move-result-object p1

    return-object p1
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 1

    iget-char v0, p0, Landroidx/appcompat/view/menu/qc0;->j:C

    if-ne v0, p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Landroidx/appcompat/view/menu/qc0;->j:C

    iget-object p1, p0, Landroidx/appcompat/view/menu/qc0;->n:Landroidx/appcompat/view/menu/mc0;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/mc0;->H(Z)V

    return-object p0
.end method

.method public setAlphabeticShortcut(CI)Landroid/view/MenuItem;
    .locals 1

    iget-char v0, p0, Landroidx/appcompat/view/menu/qc0;->j:C

    if-ne v0, p1, :cond_0

    iget v0, p0, Landroidx/appcompat/view/menu/qc0;->k:I

    if-ne v0, p2, :cond_0

    return-object p0

    .line 3
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Landroidx/appcompat/view/menu/qc0;->j:C

    .line 4
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/qc0;->k:I

    iget-object p1, p0, Landroidx/appcompat/view/menu/qc0;->n:Landroidx/appcompat/view/menu/mc0;

    const/4 p2, 0x0

    .line 5
    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/mc0;->H(Z)V

    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/qc0;->y:I

    and-int/lit8 v1, v0, -0x2

    or-int/2addr p1, v1

    iput p1, p0, Landroidx/appcompat/view/menu/qc0;->y:I

    if-eq v0, p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/qc0;->n:Landroidx/appcompat/view/menu/mc0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/mc0;->H(Z)V

    :cond_0
    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/qc0;->y:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/qc0;->n:Landroidx/appcompat/view/menu/mc0;

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/mc0;->N(Landroid/view/MenuItem;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/qc0;->r(Z)V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/qc0;->setContentDescription(Ljava/lang/CharSequence;)Landroidx/appcompat/view/menu/ky0;

    move-result-object p1

    return-object p1
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroidx/appcompat/view/menu/ky0;
    .locals 1

    iput-object p1, p0, Landroidx/appcompat/view/menu/qc0;->r:Ljava/lang/CharSequence;

    iget-object p1, p0, Landroidx/appcompat/view/menu/qc0;->n:Landroidx/appcompat/view/menu/mc0;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/mc0;->H(Z)V

    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 1

    if-eqz p1, :cond_0

    iget p1, p0, Landroidx/appcompat/view/menu/qc0;->y:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Landroidx/appcompat/view/menu/qc0;->y:I

    goto :goto_0

    :cond_0
    iget p1, p0, Landroidx/appcompat/view/menu/qc0;->y:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Landroidx/appcompat/view/menu/qc0;->y:I

    :goto_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/qc0;->n:Landroidx/appcompat/view/menu/mc0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/mc0;->H(Z)V

    return-object p0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/qc0;->l:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Landroidx/appcompat/view/menu/qc0;->m:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/qc0;->x:Z

    iget-object p1, p0, Landroidx/appcompat/view/menu/qc0;->n:Landroidx/appcompat/view/menu/mc0;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/mc0;->H(Z)V

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/view/menu/qc0;->m:I

    iput-object p1, p0, Landroidx/appcompat/view/menu/qc0;->l:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/qc0;->x:Z

    iget-object p1, p0, Landroidx/appcompat/view/menu/qc0;->n:Landroidx/appcompat/view/menu/mc0;

    .line 1
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/mc0;->H(Z)V

    return-object p0
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .locals 1

    iput-object p1, p0, Landroidx/appcompat/view/menu/qc0;->t:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/qc0;->v:Z

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/qc0;->x:Z

    iget-object p1, p0, Landroidx/appcompat/view/menu/qc0;->n:Landroidx/appcompat/view/menu/mc0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/mc0;->H(Z)V

    return-object p0
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .locals 1

    iput-object p1, p0, Landroidx/appcompat/view/menu/qc0;->u:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/qc0;->w:Z

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/qc0;->x:Z

    iget-object p1, p0, Landroidx/appcompat/view/menu/qc0;->n:Landroidx/appcompat/view/menu/mc0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/mc0;->H(Z)V

    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/qc0;->g:Landroid/content/Intent;

    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 1

    iget-char v0, p0, Landroidx/appcompat/view/menu/qc0;->h:C

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    iput-char p1, p0, Landroidx/appcompat/view/menu/qc0;->h:C

    iget-object p1, p0, Landroidx/appcompat/view/menu/qc0;->n:Landroidx/appcompat/view/menu/mc0;

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/mc0;->H(Z)V

    return-object p0
.end method

.method public setNumericShortcut(CI)Landroid/view/MenuItem;
    .locals 1

    iget-char v0, p0, Landroidx/appcompat/view/menu/qc0;->h:C

    if-ne v0, p1, :cond_0

    iget v0, p0, Landroidx/appcompat/view/menu/qc0;->i:I

    if-ne v0, p2, :cond_0

    return-object p0

    :cond_0
    iput-char p1, p0, Landroidx/appcompat/view/menu/qc0;->h:C

    .line 2
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/qc0;->i:I

    iget-object p1, p0, Landroidx/appcompat/view/menu/qc0;->n:Landroidx/appcompat/view/menu/mc0;

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/mc0;->H(Z)V

    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/qc0;->B:Landroid/view/MenuItem$OnActionExpandListener;

    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/qc0;->q:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 0

    iput-char p1, p0, Landroidx/appcompat/view/menu/qc0;->h:C

    .line 1
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Landroidx/appcompat/view/menu/qc0;->j:C

    iget-object p1, p0, Landroidx/appcompat/view/menu/qc0;->n:Landroidx/appcompat/view/menu/mc0;

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/mc0;->H(Z)V

    return-object p0
.end method

.method public setShortcut(CCII)Landroid/view/MenuItem;
    .locals 0

    iput-char p1, p0, Landroidx/appcompat/view/menu/qc0;->h:C

    .line 3
    invoke-static {p3}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/qc0;->i:I

    .line 4
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Landroidx/appcompat/view/menu/qc0;->j:C

    .line 5
    invoke-static {p4}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/qc0;->k:I

    iget-object p1, p0, Landroidx/appcompat/view/menu/qc0;->n:Landroidx/appcompat/view/menu/mc0;

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/mc0;->H(Z)V

    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 2

    and-int/lit8 v0, p1, 0x3

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Landroidx/appcompat/view/menu/qc0;->z:I

    iget-object p1, p0, Landroidx/appcompat/view/menu/qc0;->n:Landroidx/appcompat/view/menu/mc0;

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/mc0;->F(Landroidx/appcompat/view/menu/qc0;)V

    return-void
.end method

.method public bridge synthetic setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/qc0;->v(I)Landroidx/appcompat/view/menu/ky0;

    move-result-object p1

    return-object p1
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/qc0;->n:Landroidx/appcompat/view/menu/mc0;

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mc0;->s()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/qc0;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2

    iput-object p1, p0, Landroidx/appcompat/view/menu/qc0;->e:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroidx/appcompat/view/menu/qc0;->n:Landroidx/appcompat/view/menu/mc0;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/mc0;->H(Z)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/qc0;->o:Landroidx/appcompat/view/menu/ay0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/ay0;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    :cond_0
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    iput-object p1, p0, Landroidx/appcompat/view/menu/qc0;->f:Ljava/lang/CharSequence;

    iget-object p1, p0, Landroidx/appcompat/view/menu/qc0;->n:Landroidx/appcompat/view/menu/mc0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/mc0;->H(Z)V

    return-object p0
.end method

.method public bridge synthetic setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/qc0;->setTooltipText(Ljava/lang/CharSequence;)Landroidx/appcompat/view/menu/ky0;

    move-result-object p1

    return-object p1
.end method

.method public setTooltipText(Ljava/lang/CharSequence;)Landroidx/appcompat/view/menu/ky0;
    .locals 1

    iput-object p1, p0, Landroidx/appcompat/view/menu/qc0;->s:Ljava/lang/CharSequence;

    iget-object p1, p0, Landroidx/appcompat/view/menu/qc0;->n:Landroidx/appcompat/view/menu/mc0;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/mc0;->H(Z)V

    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/qc0;->x(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/qc0;->n:Landroidx/appcompat/view/menu/mc0;

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/mc0;->G(Landroidx/appcompat/view/menu/qc0;)V

    :cond_0
    return-object p0
.end method

.method public t(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Landroidx/appcompat/view/menu/qc0;->y:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Landroidx/appcompat/view/menu/qc0;->y:I

    goto :goto_0

    :cond_0
    iget p1, p0, Landroidx/appcompat/view/menu/qc0;->y:I

    and-int/lit8 p1, p1, -0x21

    iput p1, p0, Landroidx/appcompat/view/menu/qc0;->y:I

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/qc0;->e:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public u(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/qc0;->D:Landroid/view/ContextMenu$ContextMenuInfo;

    return-void
.end method

.method public v(I)Landroidx/appcompat/view/menu/ky0;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/qc0;->setShowAsAction(I)V

    return-object p0
.end method

.method public w(Landroidx/appcompat/view/menu/ay0;)V
    .locals 1

    iput-object p1, p0, Landroidx/appcompat/view/menu/qc0;->o:Landroidx/appcompat/view/menu/ay0;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/qc0;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/ay0;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    return-void
.end method

.method public x(Z)Z
    .locals 3

    iget v0, p0, Landroidx/appcompat/view/menu/qc0;->y:I

    and-int/lit8 v1, v0, -0x9

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    or-int/2addr p1, v1

    iput p1, p0, Landroidx/appcompat/view/menu/qc0;->y:I

    if-eq v0, p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public y()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/qc0;->n:Landroidx/appcompat/view/menu/mc0;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mc0;->w()Z

    move-result v0

    return v0
.end method

.method public z()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/qc0;->n:Landroidx/appcompat/view/menu/mc0;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mc0;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/qc0;->e()C

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
