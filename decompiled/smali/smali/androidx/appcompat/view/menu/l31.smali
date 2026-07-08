.class public final Landroidx/appcompat/view/menu/l31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/ts;


# instance fields
.field public final a:Landroidx/appcompat/view/menu/kh;

.field public final b:Ljava/lang/Object;

.field public final c:Landroidx/appcompat/view/menu/tw;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/ts;Landroidx/appcompat/view/menu/kh;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/view/menu/l31;->a:Landroidx/appcompat/view/menu/kh;

    invoke-static {p2}, Landroidx/appcompat/view/menu/i01;->b(Landroidx/appcompat/view/menu/kh;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Landroidx/appcompat/view/menu/l31;->b:Ljava/lang/Object;

    new-instance p2, Landroidx/appcompat/view/menu/l31$a;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Landroidx/appcompat/view/menu/l31$a;-><init>(Landroidx/appcompat/view/menu/ts;Landroidx/appcompat/view/menu/xg;)V

    iput-object p2, p0, Landroidx/appcompat/view/menu/l31;->c:Landroidx/appcompat/view/menu/tw;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Landroidx/appcompat/view/menu/xg;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/l31;->a:Landroidx/appcompat/view/menu/kh;

    iget-object v1, p0, Landroidx/appcompat/view/menu/l31;->b:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/appcompat/view/menu/l31;->c:Landroidx/appcompat/view/menu/tw;

    invoke-static {v0, p1, v1, v2, p2}, Landroidx/appcompat/view/menu/wa;->b(Landroidx/appcompat/view/menu/kh;Ljava/lang/Object;Ljava/lang/Object;Landroidx/appcompat/view/menu/tw;Landroidx/appcompat/view/menu/xg;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Landroidx/appcompat/view/menu/a60;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;

    return-object p1
.end method
