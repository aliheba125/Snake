.class public final Landroidx/appcompat/view/menu/qq1$a;
.super Landroidx/appcompat/view/menu/q02$b;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/a42;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/qq1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Landroidx/appcompat/view/menu/qq1;->G()Landroidx/appcompat/view/menu/qq1;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/q02$b;-><init>(Landroidx/appcompat/view/menu/q02;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/nq1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroidx/appcompat/view/menu/qq1$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final r(Ljava/lang/String;)Landroidx/appcompat/view/menu/qq1$a;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/q02$b;->n()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/q02$b;->n:Landroidx/appcompat/view/menu/q02;

    check-cast v0, Landroidx/appcompat/view/menu/qq1;

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/qq1;->H(Landroidx/appcompat/view/menu/qq1;Ljava/lang/String;)V

    return-object p0
.end method
