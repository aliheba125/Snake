.class public Landroidx/appcompat/view/menu/y81$e;
.super Landroidx/appcompat/view/menu/y81$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/y81;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/view/menu/y81$d;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/y81;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/y81$d;-><init>(Landroidx/appcompat/view/menu/y81;)V

    return-void
.end method


# virtual methods
.method public c(ILandroidx/appcompat/view/menu/h50;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81$d;->c:Landroid/view/WindowInsets$Builder;

    invoke-static {p1}, Landroidx/appcompat/view/menu/y81$n;->a(I)I

    move-result p1

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/h50;->e()Landroid/graphics/Insets;

    move-result-object p2

    invoke-static {v0, p1, p2}, Landroidx/appcompat/view/menu/h91;->a(Landroid/view/WindowInsets$Builder;ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method
