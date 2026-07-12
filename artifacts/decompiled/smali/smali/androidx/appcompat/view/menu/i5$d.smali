.class public final Landroidx/appcompat/view/menu/i5$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/tf0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/i5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final a:Landroidx/appcompat/view/menu/i5$d;

.field public static final b:Landroidx/appcompat/view/menu/ir;

.field public static final c:Landroidx/appcompat/view/menu/ir;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/appcompat/view/menu/i5$d;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/i5$d;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/i5$d;->a:Landroidx/appcompat/view/menu/i5$d;

    const-string v0, "logSource"

    invoke-static {v0}, Landroidx/appcompat/view/menu/ir;->a(Ljava/lang/String;)Landroidx/appcompat/view/menu/ir$b;

    move-result-object v0

    invoke-static {}, Landroidx/appcompat/view/menu/b5;->b()Landroidx/appcompat/view/menu/b5;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/b5;->c(I)Landroidx/appcompat/view/menu/b5;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/b5;->a()Landroidx/appcompat/view/menu/xk0;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/ir$b;->b(Ljava/lang/annotation/Annotation;)Landroidx/appcompat/view/menu/ir$b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ir$b;->a()Landroidx/appcompat/view/menu/ir;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/i5$d;->b:Landroidx/appcompat/view/menu/ir;

    const-string v0, "logEventDropped"

    invoke-static {v0}, Landroidx/appcompat/view/menu/ir;->a(Ljava/lang/String;)Landroidx/appcompat/view/menu/ir$b;

    move-result-object v0

    invoke-static {}, Landroidx/appcompat/view/menu/b5;->b()Landroidx/appcompat/view/menu/b5;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/b5;->c(I)Landroidx/appcompat/view/menu/b5;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/b5;->a()Landroidx/appcompat/view/menu/xk0;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/ir$b;->b(Ljava/lang/annotation/Annotation;)Landroidx/appcompat/view/menu/ir$b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ir$b;->a()Landroidx/appcompat/view/menu/ir;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/i5$d;->c:Landroidx/appcompat/view/menu/ir;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroidx/appcompat/view/menu/ja0;

    check-cast p2, Landroidx/appcompat/view/menu/uf0;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/i5$d;->b(Landroidx/appcompat/view/menu/ja0;Landroidx/appcompat/view/menu/uf0;)V

    return-void
.end method

.method public b(Landroidx/appcompat/view/menu/ja0;Landroidx/appcompat/view/menu/uf0;)V
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/i5$d;->b:Landroidx/appcompat/view/menu/ir;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ja0;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroidx/appcompat/view/menu/uf0;->e(Landroidx/appcompat/view/menu/ir;Ljava/lang/Object;)Landroidx/appcompat/view/menu/uf0;

    sget-object v0, Landroidx/appcompat/view/menu/i5$d;->c:Landroidx/appcompat/view/menu/ir;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ja0;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Landroidx/appcompat/view/menu/uf0;->e(Landroidx/appcompat/view/menu/ir;Ljava/lang/Object;)Landroidx/appcompat/view/menu/uf0;

    return-void
.end method
