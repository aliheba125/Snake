.class public Landroidx/appcompat/view/menu/y81$i;
.super Landroidx/appcompat/view/menu/y81$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/y81;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/y81;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/view/menu/y81$h;-><init>(Landroidx/appcompat/view/menu/y81;Landroid/view/WindowInsets;)V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/y81;Landroidx/appcompat/view/menu/y81$i;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/view/menu/y81$h;-><init>(Landroidx/appcompat/view/menu/y81;Landroidx/appcompat/view/menu/y81$h;)V

    return-void
.end method


# virtual methods
.method public a()Landroidx/appcompat/view/menu/y81;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeDisplayCutout()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/y81;->t(Landroid/view/WindowInsets;)Landroidx/appcompat/view/menu/y81;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/appcompat/view/menu/y81$i;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/appcompat/view/menu/y81$i;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y81$g;->c:Landroid/view/WindowInsets;

    iget-object v3, p1, Landroidx/appcompat/view/menu/y81$g;->c:Landroid/view/WindowInsets;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/appcompat/view/menu/y81$g;->g:Landroidx/appcompat/view/menu/h50;

    iget-object p1, p1, Landroidx/appcompat/view/menu/y81$g;->g:Landroidx/appcompat/view/menu/h50;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public f()Landroidx/appcompat/view/menu/im;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/im;->e(Landroid/view/DisplayCutout;)Landroidx/appcompat/view/menu/im;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->hashCode()I

    move-result v0

    return v0
.end method
