.class public Landroidx/appcompat/view/menu/y81$j;
.super Landroidx/appcompat/view/menu/y81$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/y81;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# instance fields
.field public n:Landroidx/appcompat/view/menu/h50;

.field public o:Landroidx/appcompat/view/menu/h50;

.field public p:Landroidx/appcompat/view/menu/h50;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/y81;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/view/menu/y81$i;-><init>(Landroidx/appcompat/view/menu/y81;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/appcompat/view/menu/y81$j;->n:Landroidx/appcompat/view/menu/h50;

    iput-object p1, p0, Landroidx/appcompat/view/menu/y81$j;->o:Landroidx/appcompat/view/menu/h50;

    iput-object p1, p0, Landroidx/appcompat/view/menu/y81$j;->p:Landroidx/appcompat/view/menu/h50;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/y81;Landroidx/appcompat/view/menu/y81$j;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/view/menu/y81$i;-><init>(Landroidx/appcompat/view/menu/y81;Landroidx/appcompat/view/menu/y81$i;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/appcompat/view/menu/y81$j;->n:Landroidx/appcompat/view/menu/h50;

    iput-object p1, p0, Landroidx/appcompat/view/menu/y81$j;->o:Landroidx/appcompat/view/menu/h50;

    iput-object p1, p0, Landroidx/appcompat/view/menu/y81$j;->p:Landroidx/appcompat/view/menu/h50;

    return-void
.end method


# virtual methods
.method public h()Landroidx/appcompat/view/menu/h50;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81$j;->o:Landroidx/appcompat/view/menu/h50;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81$g;->c:Landroid/view/WindowInsets;

    invoke-static {v0}, Landroidx/appcompat/view/menu/k91;->a(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/h50;->d(Landroid/graphics/Insets;)Landroidx/appcompat/view/menu/h50;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/y81$j;->o:Landroidx/appcompat/view/menu/h50;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/y81$j;->o:Landroidx/appcompat/view/menu/h50;

    return-object v0
.end method

.method public j()Landroidx/appcompat/view/menu/h50;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81$j;->n:Landroidx/appcompat/view/menu/h50;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81$g;->c:Landroid/view/WindowInsets;

    invoke-static {v0}, Landroidx/appcompat/view/menu/i91;->a(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/h50;->d(Landroid/graphics/Insets;)Landroidx/appcompat/view/menu/h50;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/y81$j;->n:Landroidx/appcompat/view/menu/h50;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/y81$j;->n:Landroidx/appcompat/view/menu/h50;

    return-object v0
.end method

.method public l()Landroidx/appcompat/view/menu/h50;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81$j;->p:Landroidx/appcompat/view/menu/h50;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81$g;->c:Landroid/view/WindowInsets;

    invoke-static {v0}, Landroidx/appcompat/view/menu/j91;->a(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/h50;->d(Landroid/graphics/Insets;)Landroidx/appcompat/view/menu/h50;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/y81$j;->p:Landroidx/appcompat/view/menu/h50;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/y81$j;->p:Landroidx/appcompat/view/menu/h50;

    return-object v0
.end method

.method public m(IIII)Landroidx/appcompat/view/menu/y81;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81$g;->c:Landroid/view/WindowInsets;

    invoke-static {v0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/l91;->a(Landroid/view/WindowInsets;IIII)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/y81;->t(Landroid/view/WindowInsets;)Landroidx/appcompat/view/menu/y81;

    move-result-object p1

    return-object p1
.end method

.method public s(Landroidx/appcompat/view/menu/h50;)V
    .locals 0

    return-void
.end method
