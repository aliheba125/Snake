.class public Landroidx/appcompat/view/menu/g70$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/xi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/g70;->i()Landroidx/appcompat/view/menu/xi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/g70;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/g70;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/g70$a;->a:Landroidx/appcompat/view/menu/g70;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 7

    new-instance v6, Landroidx/appcompat/view/menu/h70;

    iget-object v0, p0, Landroidx/appcompat/view/menu/g70$a;->a:Landroidx/appcompat/view/menu/g70;

    invoke-static {v0}, Landroidx/appcompat/view/menu/g70;->e(Landroidx/appcompat/view/menu/g70;)Ljava/util/Map;

    move-result-object v2

    iget-object v0, p0, Landroidx/appcompat/view/menu/g70$a;->a:Landroidx/appcompat/view/menu/g70;

    invoke-static {v0}, Landroidx/appcompat/view/menu/g70;->f(Landroidx/appcompat/view/menu/g70;)Ljava/util/Map;

    move-result-object v3

    iget-object v0, p0, Landroidx/appcompat/view/menu/g70$a;->a:Landroidx/appcompat/view/menu/g70;

    invoke-static {v0}, Landroidx/appcompat/view/menu/g70;->g(Landroidx/appcompat/view/menu/g70;)Landroidx/appcompat/view/menu/tf0;

    move-result-object v4

    iget-object v0, p0, Landroidx/appcompat/view/menu/g70$a;->a:Landroidx/appcompat/view/menu/g70;

    invoke-static {v0}, Landroidx/appcompat/view/menu/g70;->h(Landroidx/appcompat/view/menu/g70;)Z

    move-result v5

    move-object v0, v6

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/h70;-><init>(Ljava/io/Writer;Ljava/util/Map;Ljava/util/Map;Landroidx/appcompat/view/menu/tf0;Z)V

    const/4 p2, 0x0

    invoke-virtual {v6, p1, p2}, Landroidx/appcompat/view/menu/h70;->h(Ljava/lang/Object;Z)Landroidx/appcompat/view/menu/h70;

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/h70;->p()V

    return-void
.end method
