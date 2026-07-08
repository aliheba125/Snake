.class public final Landroidx/appcompat/view/menu/m2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/m2$f;,
        Landroidx/appcompat/view/menu/m2$b;,
        Landroidx/appcompat/view/menu/m2$g;,
        Landroidx/appcompat/view/menu/m2$c;,
        Landroidx/appcompat/view/menu/m2$d;,
        Landroidx/appcompat/view/menu/m2$a;,
        Landroidx/appcompat/view/menu/m2$e;
    }
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/view/menu/m2$a;

.field public final b:Landroidx/appcompat/view/menu/m2$g;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/appcompat/view/menu/m2$a;Landroidx/appcompat/view/menu/m2$g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Cannot construct an Api with a null ClientBuilder"

    invoke-static {p2, v0}, Landroidx/appcompat/view/menu/mj0;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Cannot construct an Api with a null ClientKey"

    invoke-static {p3, v0}, Landroidx/appcompat/view/menu/mj0;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroidx/appcompat/view/menu/m2;->c:Ljava/lang/String;

    iput-object p2, p0, Landroidx/appcompat/view/menu/m2;->a:Landroidx/appcompat/view/menu/m2$a;

    iput-object p3, p0, Landroidx/appcompat/view/menu/m2;->b:Landroidx/appcompat/view/menu/m2$g;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/appcompat/view/menu/m2$a;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/m2;->a:Landroidx/appcompat/view/menu/m2$a;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/m2;->c:Ljava/lang/String;

    return-object v0
.end method
