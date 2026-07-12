.class public final Landroidx/appcompat/view/menu/hs0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/qq;


# instance fields
.field public final a:Landroidx/appcompat/view/menu/dl0;

.field public final b:Landroidx/appcompat/view/menu/dl0;

.field public final c:Landroidx/appcompat/view/menu/dl0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/dl0;Landroidx/appcompat/view/menu/dl0;Landroidx/appcompat/view/menu/dl0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/hs0;->a:Landroidx/appcompat/view/menu/dl0;

    iput-object p2, p0, Landroidx/appcompat/view/menu/hs0;->b:Landroidx/appcompat/view/menu/dl0;

    iput-object p3, p0, Landroidx/appcompat/view/menu/hs0;->c:Landroidx/appcompat/view/menu/dl0;

    return-void
.end method

.method public static a(Landroidx/appcompat/view/menu/dl0;Landroidx/appcompat/view/menu/dl0;Landroidx/appcompat/view/menu/dl0;)Landroidx/appcompat/view/menu/hs0;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/hs0;

    invoke-direct {v0, p0, p1, p2}, Landroidx/appcompat/view/menu/hs0;-><init>(Landroidx/appcompat/view/menu/dl0;Landroidx/appcompat/view/menu/dl0;Landroidx/appcompat/view/menu/dl0;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;I)Landroidx/appcompat/view/menu/gs0;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/gs0;

    invoke-direct {v0, p0, p1, p2}, Landroidx/appcompat/view/menu/gs0;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public b()Landroidx/appcompat/view/menu/gs0;
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/hs0;->a:Landroidx/appcompat/view/menu/dl0;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/dl0;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Landroidx/appcompat/view/menu/hs0;->b:Landroidx/appcompat/view/menu/dl0;

    invoke-interface {v1}, Landroidx/appcompat/view/menu/dl0;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Landroidx/appcompat/view/menu/hs0;->c:Landroidx/appcompat/view/menu/dl0;

    invoke-interface {v2}, Landroidx/appcompat/view/menu/dl0;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroidx/appcompat/view/menu/hs0;->c(Landroid/content/Context;Ljava/lang/String;I)Landroidx/appcompat/view/menu/gs0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/hs0;->b()Landroidx/appcompat/view/menu/gs0;

    move-result-object v0

    return-object v0
.end method
