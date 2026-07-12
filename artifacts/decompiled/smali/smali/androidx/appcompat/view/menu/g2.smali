.class public final Landroidx/appcompat/view/menu/g2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/la0;


# static fields
.field public static final a:Landroidx/appcompat/view/menu/g2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/g2;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/g2;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/g2;->a:Landroidx/appcompat/view/menu/g2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "message"

    invoke-static {p2, p1}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
