.class public Landroidx/appcompat/view/menu/y81$d;
.super Landroidx/appcompat/view/menu/y81$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/y81;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final c:Landroid/view/WindowInsets$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/view/menu/y81$f;-><init>()V

    .line 2
    invoke-static {}, Landroidx/appcompat/view/menu/f91;->a()Landroid/view/WindowInsets$Builder;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/y81$d;->c:Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/y81;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/y81$f;-><init>(Landroidx/appcompat/view/menu/y81;)V

    .line 4
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/y81;->s()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-static {p1}, Landroidx/appcompat/view/menu/g91;->a(Landroid/view/WindowInsets;)Landroid/view/WindowInsets$Builder;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Landroidx/appcompat/view/menu/f91;->a()Landroid/view/WindowInsets$Builder;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroidx/appcompat/view/menu/y81$d;->c:Landroid/view/WindowInsets$Builder;

    return-void
.end method


# virtual methods
.method public b()Landroidx/appcompat/view/menu/y81;
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y81$f;->a()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81$d;->c:Landroid/view/WindowInsets$Builder;

    invoke-static {v0}, Landroidx/appcompat/view/menu/e91;->a(Landroid/view/WindowInsets$Builder;)Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/y81;->t(Landroid/view/WindowInsets;)Landroidx/appcompat/view/menu/y81;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/y81$f;->b:[Landroidx/appcompat/view/menu/h50;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/y81;->o([Landroidx/appcompat/view/menu/h50;)V

    return-object v0
.end method

.method public d(Landroidx/appcompat/view/menu/h50;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81$d;->c:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/h50;->e()Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/c91;->a(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public e(Landroidx/appcompat/view/menu/h50;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81$d;->c:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/h50;->e()Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/b91;->a(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public f(Landroidx/appcompat/view/menu/h50;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81$d;->c:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/h50;->e()Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/d91;->a(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public g(Landroidx/appcompat/view/menu/h50;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81$d;->c:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/h50;->e()Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/a91;->a(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public h(Landroidx/appcompat/view/menu/h50;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81$d;->c:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/h50;->e()Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/z81;->a(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method
