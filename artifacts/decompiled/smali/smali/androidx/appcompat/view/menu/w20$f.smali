.class public Landroidx/appcompat/view/menu/w20$f;
.super Landroidx/appcompat/view/menu/md0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/w20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/md0;-><init>()V

    iput p2, p0, Landroidx/appcompat/view/menu/w20$f;->a:I

    iput-object p3, p0, Landroidx/appcompat/view/menu/w20$f;->b:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/appcompat/view/menu/w20$f;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/w20$f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, Landroidx/appcompat/view/menu/w20$f;->b:Ljava/lang/Object;

    invoke-virtual {p0, p2, p1}, Landroidx/appcompat/view/menu/w20$f;->f(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final f(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AndroidFuture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    sget-object p1, Landroidx/appcompat/view/menu/f2;->c:Landroidx/appcompat/view/menu/go0$a;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/go0$a;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Landroidx/appcompat/view/menu/f2;->b:Landroidx/appcompat/view/menu/go0$d;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/go0$d;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method
