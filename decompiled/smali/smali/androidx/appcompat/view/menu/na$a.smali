.class public final Landroidx/appcompat/view/menu/na$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/na;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/net/URL;

.field public final b:Landroidx/appcompat/view/menu/g8;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/URL;Landroidx/appcompat/view/menu/g8;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/na$a;->a:Ljava/net/URL;

    iput-object p2, p0, Landroidx/appcompat/view/menu/na$a;->b:Landroidx/appcompat/view/menu/g8;

    iput-object p3, p0, Landroidx/appcompat/view/menu/na$a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/net/URL;)Landroidx/appcompat/view/menu/na$a;
    .locals 3

    new-instance v0, Landroidx/appcompat/view/menu/na$a;

    iget-object v1, p0, Landroidx/appcompat/view/menu/na$a;->b:Landroidx/appcompat/view/menu/g8;

    iget-object v2, p0, Landroidx/appcompat/view/menu/na$a;->c:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2}, Landroidx/appcompat/view/menu/na$a;-><init>(Ljava/net/URL;Landroidx/appcompat/view/menu/g8;Ljava/lang/String;)V

    return-object v0
.end method
