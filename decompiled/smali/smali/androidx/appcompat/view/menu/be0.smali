.class public Landroidx/appcompat/view/menu/be0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/be0$c;
    }
.end annotation


# static fields
.field public static c:Ljava/util/HashMap;


# instance fields
.field public final a:Landroidx/appcompat/view/menu/be0$c;

.field public final b:Landroidx/appcompat/view/menu/ae0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/be0$c;Landroidx/appcompat/view/menu/ae0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/be0;->a:Landroidx/appcompat/view/menu/be0$c;

    iput-object p2, p0, Landroidx/appcompat/view/menu/be0;->b:Landroidx/appcompat/view/menu/ae0;

    new-instance p1, Landroidx/appcompat/view/menu/be0$a;

    invoke-direct {p1, p0}, Landroidx/appcompat/view/menu/be0$a;-><init>(Landroidx/appcompat/view/menu/be0;)V

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/ae0;->b(Landroidx/appcompat/view/menu/ae0$b;)V

    return-void
.end method

.method public static synthetic a(Landroidx/appcompat/view/menu/be0;Ljava/lang/String;)Landroid/view/PointerIcon;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/be0;->d(Ljava/lang/String;)Landroid/view/PointerIcon;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroidx/appcompat/view/menu/be0;)Landroidx/appcompat/view/menu/be0$c;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/be0;->a:Landroidx/appcompat/view/menu/be0$c;

    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/be0;->b:Landroidx/appcompat/view/menu/ae0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/ae0;->b(Landroidx/appcompat/view/menu/ae0$b;)V

    return-void
.end method

.method public final d(Ljava/lang/String;)Landroid/view/PointerIcon;
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/be0;->c:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/be0$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/be0$b;-><init>(Landroidx/appcompat/view/menu/be0;)V

    sput-object v0, Landroidx/appcompat/view/menu/be0;->c:Ljava/util/HashMap;

    :cond_0
    sget-object v0, Landroidx/appcompat/view/menu/be0;->c:Ljava/util/HashMap;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Landroidx/appcompat/view/menu/be0;->a:Landroidx/appcompat/view/menu/be0$c;

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/be0$c;->b(I)Landroid/view/PointerIcon;

    move-result-object p1

    return-object p1
.end method
