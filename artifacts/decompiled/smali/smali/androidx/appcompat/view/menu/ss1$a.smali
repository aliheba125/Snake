.class public final Landroidx/appcompat/view/menu/ss1$a;
.super Landroidx/appcompat/view/menu/q02$b;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/a42;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/ss1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Landroidx/appcompat/view/menu/ss1;->N()Landroidx/appcompat/view/menu/ss1;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/q02$b;-><init>(Landroidx/appcompat/view/menu/q02;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/fs1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ss1$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final r(I)Landroidx/appcompat/view/menu/ss1$a;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/q02$b;->n()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/q02$b;->n:Landroidx/appcompat/view/menu/q02;

    check-cast v0, Landroidx/appcompat/view/menu/ss1;

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/ss1;->H(Landroidx/appcompat/view/menu/ss1;I)V

    return-object p0
.end method

.method public final s(Ljava/lang/Iterable;)Landroidx/appcompat/view/menu/ss1$a;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/q02$b;->n()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/q02$b;->n:Landroidx/appcompat/view/menu/q02;

    check-cast v0, Landroidx/appcompat/view/menu/ss1;

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/ss1;->I(Landroidx/appcompat/view/menu/ss1;Ljava/lang/Iterable;)V

    return-object p0
.end method
