.class public final Landroidx/appcompat/view/menu/f21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/e21;


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:Landroidx/appcompat/view/menu/d21;

.field public final c:Landroidx/appcompat/view/menu/i21;


# direct methods
.method public constructor <init>(Ljava/util/Set;Landroidx/appcompat/view/menu/d21;Landroidx/appcompat/view/menu/i21;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/f21;->a:Ljava/util/Set;

    iput-object p2, p0, Landroidx/appcompat/view/menu/f21;->b:Landroidx/appcompat/view/menu/d21;

    iput-object p3, p0, Landroidx/appcompat/view/menu/f21;->c:Landroidx/appcompat/view/menu/i21;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Class;Landroidx/appcompat/view/menu/lo;Landroidx/appcompat/view/menu/r11;)Landroidx/appcompat/view/menu/b21;
    .locals 6

    iget-object p2, p0, Landroidx/appcompat/view/menu/f21;->a:Ljava/util/Set;

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Landroidx/appcompat/view/menu/h21;

    iget-object v1, p0, Landroidx/appcompat/view/menu/f21;->b:Landroidx/appcompat/view/menu/d21;

    iget-object v5, p0, Landroidx/appcompat/view/menu/f21;->c:Landroidx/appcompat/view/menu/i21;

    move-object v0, p2

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/h21;-><init>(Landroidx/appcompat/view/menu/d21;Ljava/lang/String;Landroidx/appcompat/view/menu/lo;Landroidx/appcompat/view/menu/r11;Landroidx/appcompat/view/menu/i21;)V

    return-object p2

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object p2, p0, Landroidx/appcompat/view/menu/f21;->a:Ljava/util/Set;

    filled-new-array {p3, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "%s is not supported byt this factory. Supported encodings are: %s."

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
