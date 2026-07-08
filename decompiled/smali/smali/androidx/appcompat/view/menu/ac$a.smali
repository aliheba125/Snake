.class public final Landroidx/appcompat/view/menu/ac$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/accounts/Account;

.field public b:Landroidx/appcompat/view/menu/q4;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Landroidx/appcompat/view/menu/lu0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/appcompat/view/menu/lu0;->j:Landroidx/appcompat/view/menu/lu0;

    iput-object v0, p0, Landroidx/appcompat/view/menu/ac$a;->e:Landroidx/appcompat/view/menu/lu0;

    return-void
.end method


# virtual methods
.method public a()Landroidx/appcompat/view/menu/ac;
    .locals 11

    new-instance v10, Landroidx/appcompat/view/menu/ac;

    iget-object v1, p0, Landroidx/appcompat/view/menu/ac$a;->a:Landroid/accounts/Account;

    iget-object v2, p0, Landroidx/appcompat/view/menu/ac$a;->b:Landroidx/appcompat/view/menu/q4;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Landroidx/appcompat/view/menu/ac$a;->c:Ljava/lang/String;

    iget-object v7, p0, Landroidx/appcompat/view/menu/ac$a;->d:Ljava/lang/String;

    iget-object v8, p0, Landroidx/appcompat/view/menu/ac$a;->e:Landroidx/appcompat/view/menu/lu0;

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Landroidx/appcompat/view/menu/ac;-><init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Landroidx/appcompat/view/menu/lu0;Z)V

    return-object v10
.end method

.method public b(Ljava/lang/String;)Landroidx/appcompat/view/menu/ac$a;
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/ac$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final c(Ljava/util/Collection;)Landroidx/appcompat/view/menu/ac$a;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ac$a;->b:Landroidx/appcompat/view/menu/q4;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/q4;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/q4;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/ac$a;->b:Landroidx/appcompat/view/menu/q4;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/ac$a;->b:Landroidx/appcompat/view/menu/q4;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/q4;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final d(Landroid/accounts/Account;)Landroidx/appcompat/view/menu/ac$a;
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/ac$a;->a:Landroid/accounts/Account;

    return-object p0
.end method

.method public final e(Ljava/lang/String;)Landroidx/appcompat/view/menu/ac$a;
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/ac$a;->d:Ljava/lang/String;

    return-object p0
.end method
